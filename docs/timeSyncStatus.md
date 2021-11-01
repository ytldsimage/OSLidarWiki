# 同步时间状态校验



```python
#!/usr/bin/env python3
#
# Probably need to run with PYTHONUNBUFFERED=1 ./timestomper.py
#
import json
import logging
import os
import socket
import socketserver
import struct
import sys
import threading
import time

DEBUG = os.getenv('DEBUG', False)
PORT_LIDAR = 7502
PORT_IMU = 7503

SO_TIMESTAMPNS = 35
SOF_TIMESTAMPING_TX_HARDWARE = 1 

# PTP uses the TAI offset in all well formed profiles.  time.time()
# returns a UNIX timestamp which has leapseconds, compensate here.
TAI_OFFSET = 37

shutdown_evt = threading.Event()

def get_packet_timestamp(ancdata):
    if len(ancdata) and ancdata[0][1] == SO_TIMESTAMPNS:
        secs, ns = struct.unpack('qq', ancdata[0][2])
        return secs + ns/1E9
    else:
        logging.warn('No socket timestamp')
        return time.time()

#
# This server is single threaded and low-performance, handling each request
# should be quick.
#
# It's trivial to make this multi-threaded with the Python ThreadingMixIn.
#
# A new object is created for each request, so try to loop over the socket to
# avoid new stuff.
#
# The ThreadingMixIn isn't needed as there should only be one sender at at time
# or the output will be nonsensible.

#class LidarHandler(socketserver.ThreadingMixIn, socketserver.BaseRequestHandler):
class LidarHandler(socketserver.BaseRequestHandler):

    def handle(self):

        sock = self.request[1]

        while not shutdown_evt.is_set():
            data, ancdata, flags, address = sock.recvmsg(65535, 1024)

            now = get_packet_timestamp(ancdata)

            t = struct.unpack('q', data[0:8])[0]
            t_float = t/1E9 - TAI_OFFSET

            diff = now - t_float

            dout = { 'lidar': { 'local_rx': now, 'sensor_lidar':  { 'timestamp': t_float, 'diff': diff } } }

            try:
                print(json.dumps(dout))
            except (BrokenPipeError):
                shutdown_evt.set()

            if diff > 0.01:
                logging.warn(f"Big delta, exiting: {dout}")
                shutdown_evt.set()

#class IMUHandler(socketserver.ThreadingMixIn, socketserver.BaseRequestHandler):
class IMUHandler(socketserver.BaseRequestHandler):

    def handle(self):
        sock = self.request[1]
        while not shutdown_evt.is_set():
            data, ancdata, flags, address = sock.recvmsg(65535, 1024)

            now = get_packet_timestamp(ancdata)

            t = struct.unpack('qqq', data[0:24])
            t_float = [i/1E9 - TAI_OFFSET for i in t]

            diff = [now - t for t in t_float]

            dout = {'imu': 
                    { 'local_rx': now, 
                        'sensor_mono':  { 'timestamp': t_float[0], 'diff': diff[0] },
                        'sensor_accel': { 'timestamp': t_float[1], 'diff': diff[1] },
                        'sensor_gyro':  { 'timestamp': t_float[2], 'diff': diff[2] },
                    }
                }

            try:
                print(json.dumps(dout))
            except (BrokenPipeError):
                shutdown_evt.set()

            for d in diff[1:]:
                if d > 0.01:
                    logging.warn(f"Big delta, exiting: {dout}")
                    shutdown_evt.set()

if __name__ == '__main__':
    level = logging.DEBUG if DEBUG else logging.INFO
    logging.basicConfig(stream=sys.stderr, level=level)

    lidar = socketserver.UDPServer(('', PORT_LIDAR), LidarHandler)
    lidar.socket.setsockopt(socket.SOL_SOCKET, SO_TIMESTAMPNS, SOF_TIMESTAMPING_TX_HARDWARE)
    lidar.thread = threading.Thread(target=lidar.serve_forever)
    # Avoid doing hacking threads, we can clean these up properly.
    #lidar_thread.daemon = True

    imu = socketserver.UDPServer(('', PORT_IMU), IMUHandler)
    imu.socket.setsockopt(socket.SOL_SOCKET, SO_TIMESTAMPNS, SOF_TIMESTAMPING_TX_HARDWARE)
    imu.thread = threading.Thread(target=imu.serve_forever)
    # Avoid doing hacking threads, we can clean these up properly.
    #imu_thread.daemon = True

    servers = [lidar, imu]

    [s.thread.start() for s in servers]

    try:
        shutdown_evt.wait()
    except (KeyboardInterrupt, SystemExit):
        shutdown_evt.set()
    finally:
        print("\nShutting down... ", file=sys.stderr, end='')
        [s.shutdown() for s in servers]

        print("Joining... ", file=sys.stderr, end='')
        [s.thread.join() for s in servers]

        print("Please play again.", file=sys.stderr)

```

