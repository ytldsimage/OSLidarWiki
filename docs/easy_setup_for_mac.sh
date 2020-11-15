#!/bin/sh

# ETH=$1 # ID of interface to configure
# SN=$2

## 

read -p "ID of interface, default is en11: " ETH
ETH=${ETH:-en11}

read -p "SN of LiDAR, default is os1-991936000394.local: " SN
SN=${SN:-os1-991936000394.local}

function start_viz() {
	echo 'Visualizer running...'
	# sudo ip -4 addr flush dev $ETH
	sudo ip link set dev $ETH down
	ip addr add 10.5.5.1/24 dev $ETH
	sudo ip link set $ETH up
	ip addr show dev $ETH
	cd ~/workspace/ouster_example_mac/ouster_viz/build
	./viz $SN 10.5.5.1
	# exec sudo dnsmasq -C /dev/null -kd -F 10.5.5.50,10.5.5.100 -i $ETH --bind-dynami
}

for((i=1;i<11;i++));
do

	if ping -c1 $SN >/dev/null 2>&1; then
		echo 'Lidar Connected.'
		
		line=`ping -c1 $SN |grep "100.0% packet loss" | wc -l`
		
		if [ "${line}" -ne 0 ];then
			echo "Network Issue!"
		else
			start_viz
		fi 

	else
		echo "Connecting to OS1 ... $i time(s)"		
	fi

	sleep 2
done

