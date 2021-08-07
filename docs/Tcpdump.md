

# Tcpdump采集网口端数据

> 有问题请加微信：Kungfuas

1. 停止所有雷达点云数据流（data streaming），不要运行ROS驱动、Ouster Visualizer、OusterStudio等;

2. 用ip addr命令查询到与激光雷达相连的网卡的名字（以下称为interface_name）;

3. 确保能ping通雷达的ip或者host_name;

4. 通过ethtool &lt;interface_name&gt;命令查询网卡是否是千兆网卡；

5. 确保电脑与雷达之间的网线、路由器、交换机等都满足千兆传输规格

6. 运行如下TCP命令，启动雷达到电脑端的点云数据流（对于下面的后三条命令，成功执行后窗口会自动弹出同样的一行命令文字。如果执行有误，会有其他报错信息）：

   ```sh
   nc  <雷达host_name 或 ip>  7501
   sudo set_config_param lidar_mode 1024x10
   set_udp_dest_auto
   reinitialize
   
   ```

7. 打开另一个terminal窗口，执行如下命令，以便确认雷达到电脑的数据流已经开启：

   ```sh
   tcpdump -i <interface_name>
   ```

   如果点云数据流已经开启，则该命令执行后可以看到窗口内不停滚动播报消息。

   确认完毕后按Ctrl + C结束该查询。

8. 执行如下命令保存网络端口处接收的所有数据包(文件名filename.cpp可以由你自己设定)。注意不要执行太久，连续采集5秒钟左右即可，然后按Ctrl + C 停止。

   ```sh
   tcpdump  -i  <interface_name>  host <雷达 ip>  -w  filename.pcap
   ```

9. 将上面得到的pcap文件发送给Ouster.