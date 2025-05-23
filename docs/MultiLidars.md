# 同一个ROS，多个Lidar

> https://blog.csdn.net/weixin_39652282/article/details/103682320

```shell

<launch>
	
  <arg name="device_ip1" default="192.168.1.200" />
  <arg name="device_ip2" default="192.168.1.200" />

  <arg name="msop_port1" default="2368" />
  <arg name="difop_port1" default="2369" />
  <arg name="msop_port2" default="2370" />
  <arg name="difop_port2" default="2371" />
  <arg name="return_mode" default="1" />
  <arg name="time_synchronization" default="true" />
	


  <node pkg="lslidar_c16_driver" type="lslidar_c16_driver_node" name="lslidar_c16_driver_node" output="screen" ns="LeftLidar" >
    <param name="lidar_ip" value="$(arg device_ip1)" />
    <param name="msop_port" value="$(arg msop_port1)" />
    <param name="difop_port" value="$(arg difop_port1)"/>
    <param name="frame_id" value="laser_link_left"/>
    <param name="add_multicast" value="false"/>
    <param name="group_ip" value="224.1.1.2"/>
    <param name="rpm" value="600"/>
    <param name="return_mode" value="$(arg return_mode)"/>
    <param name="time_synchronization" value="$(arg time_synchronization)"/>
  </node>

  <node pkg="lslidar_c16_decoder" type="lslidar_c16_decoder_node" name="lslidar_c16_decoder_node" output="screen" ns="LeftLidar">
    <param name="calibration_file" value="$(find lslidar_c16_decoder)/params/lslidar_c16_db.yaml" />
    <param name="min_range" value="0.15"/>
    <param name="max_range" value="150.0"/>
    <param name="cbMethod" value="true"/>
    <param name="config_vert" value="true"/>
    <param name="print_vert" value="false"/>
    <param name="return_mode" value="$(arg return_mode)"/>
    <param name="degree_mode" value="2"/>
    <param name="config_vert_file" value="false"/>
    <param name="distance_unit" value="0.25"/>
    <param name="time_synchronization" value="$(arg time_synchronization)"/>
    <param name="scan_start_angle" value="0.0"/>
    <param name="scan_end_angle" value="36000.0"/>
  </node>

  <node pkg="lslidar_c16_driver" type="lslidar_c16_driver_node" name="lslidar_c16_driver_node" output="screen" ns="RightLidar" >
    <param name="lidar_ip" value="$(arg device_ip2)" />
    <param name="msop_port" value="$(arg msop_port2)" />
    <param name="difop_port" value="$(arg difop_port2)"/>
    <param name="frame_id" value="laser_link_right"/>
    <param name="add_multicast" value="false"/>
    <param name="group_ip" value="224.1.1.2"/>
    <param name="rpm" value="600"/>
    <param name="return_mode" value="$(arg return_mode)"/>
    <param name="time_synchronization" value="$(arg time_synchronization)"/>
  </node>

  <node pkg="lslidar_c16_decoder" type="lslidar_c16_decoder_node" name="lslidar_c16_decoder_node" output="screen" ns="RightLidar">
    <param name="calibration_file" value="$(find lslidar_c16_decoder)/params/lslidar_c16_db.yaml" />
    <param name="min_range" value="0.15"/>
    <param name="max_range" value="150.0"/>
    <param name="cbMethod" value="true"/>
    <param name="config_vert" value="true"/>
    <param name="print_vert" value="false"/>
    <param name="return_mode" value="$(arg return_mode)"/>
    <param name="degree_mode" value="2"/>
    <param name="config_vert_file" value="false"/>
    <param name="distance_unit" value="0.25"/>
    <param name="time_synchronization" value="$(arg time_synchronization)"/>
    <param name="scan_start_angle" value="0.0"/>
    <param name="scan_end_angle" value="36000.0"/>
  </node>



	
 
</launch>

```

