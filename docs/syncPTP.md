# PTP 时间同步

> 时间参数：https://drive.weixin.qq.com/s?k=AEYARQeBAAYAxuUPw9AE4AvQanABU
>
> - PTP sync accuracy：≤200 μs
> - PTP clock drift after disconnection： ≤10 μs/s

## 激光雷达PTP配置

Ouster 激光雷达可以通过以太网同步IEEE-1588 PTP时间。以Linux系统为例，打开命令行窗口，输入 `nc hostname 7501` 进入TCP命令控制界面，输入：

```
set_config_param timestamp_mode TIME_FROM_PTP_1588
reinitialize
write_config_txt
```

## 计算机PTP快速配置(待更新)

请参考《用户手册》中相关章节。

---
[回首页](README)