# 内部晶振时间同步

## 时间架构

![image-20200519175947196](osc.assets/image-20200519175947196.png)

![image-20200519180002516](osc.assets/image-20200519180002516.png)

## 时间配置

```sh
set_config_param timestamp_mode TIME_FROM_INTERNAL_OSC

reinitialize
write_config_txt
```

