# **Webslam免费在线建图**

> 免费在线建图SLAM，有问题请加微信：Kungfuas

1. ### 建图网址：

   -  https://webslam.ouster.dev/   ===》[可转octomap](http://paulbourke.net/dataformats/ply/)
   -  https://cloudcompare.org/  ===》[数据格式转换](https://pcap2bag.lidar.plus)
      - kaarta cloud or the pcl_ros package + CloudCompare
      - web-slam + CloudCompare on the resulting PLY output
   -  [Run A-LOAM with the Ouster SDK recorded bag/pcap](A-LOAM)
   -  [Run Lego-LOAM with the Ouster SDK recorded bag_pcap](https://drive.weixin.qq.com/s?k=AEYARQeBAAYSj0n9cK)
   -  [IMU 二次标定](https://github.com/shenshikexmu/IMUCalibration-Gesture)：
      -  [A robust and easy to implement method for IMU calibration without external equipments](https://ieeexplore.ieee.org/document/6907297 ) 
      -  [IMU 标定 | 工业界和学术界有什么不同？](https://tianchi.aliyun.com/forum/postDetail?postId=77437)
      -  [IMU校正以及姿态融合](https://blog.csdn.net/shenshikexmu/article/details/80013444)
   -  [异构传感器联合标定](SensorCal)

   

2. ### 数据实例：

   - https://webslam.ouster.dev/slam/1588143281.538304.mayw_daniel.lu/
   - https://pan.baidu.com/s/1_TaRlKKMUvKTT0smpcI_cA  提取码：1a1b 
   - 基于OS1-ASIC2019-64-uniform-fw1.13，也就是官网公开的样例数据

   

3. ### Ply文件截图：

   - https://pics.dllu.net/file/dllu-sc/OSZMgefBKC3BCUz-.png
   - https://pics.dllu.net/file/dllu-sc/zMIBFjihgMOEq_Yk.png

   

4. ### 建图要求及注意事项：

    - 不能仅仅静态数据，至少0.05 radians 或者 0.2 meters的变化才能视为另外一个有效帧
    - 不能录制时间过短，必须至少超过64帧数据 （10HZ计算，大概7s）
    - 目前支持ASIC2019 fw1.13数据协议对应的全部产品，以及ASIC2020 fw2.0数据协议对应的全部产品
    - 如果速度 》3 m/s（可支持6dof无人机slam），需使X轴 （线缆伸出方向的反向）与行动方向一致
    - 目前仅支持内置IMU，但理论上可以支持外部IMU，暂不对外支持GNSS，以及可以发现并观测到5-10°的非常小的坡度。
    
5. 其他开源SLAM方案：

    - https://github.com/googlecartographer/cartographer
    - https://github.com/laboshinl/loam_velodyne
    - https://github.com/simondlevy/BreezySLAM
    - https://github.com/OpenSLAM-org
    - https://github.com/erik-nelson/blam
    - https://github.com/TixiaoShan/LIO-SAM
    - https://github.com/hku-mars/FAST_LIO
    - https://arxiv.org/abs/1705.09785

