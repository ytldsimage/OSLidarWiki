# **Webslam免费在线建图**

> 免费在线建图SLAM，有问题请加微信：Kungfuas

1. ### 建图网址：

   -  https://webslam.ouster.dev/   ===》[可转octomap](http://paulbourke.net/dataformats/ply/)
   - https://www.danielgm.net/cc/  ===》数据格式转换

   

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
    - 目前支持ASIC2019 fw1.13数据协议对应的全部产品，以及ASIC2020 fw1.14系列64线产品，但与纵向指向及密度分布无关，对新品的全序列支持将在加州复工后完成
    - 如果速度 》3 m/s（可支持6dof无人机slam），需使X轴 （线缆伸出方向的反向）与行动方向一致
    - 目前仅支持内置IMU，但理论上可以支持外部IMU，暂不对外支持GNSS，以及可以发现并观测到5-10°的非常小的坡度。