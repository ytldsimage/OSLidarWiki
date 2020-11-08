# 黑话

1. DCR: Dark Count Rate,The **dark count rate** (**DCR**) is defined as pulses per second in **dark** condition (i.e., no photons entering the SPAD). 
2. EOL:  End Of Line
3. Diag dump: diagnositics dump，诊断日志，dump在这里纯粹指log，没有缓存或垃圾处理的意思
4. aser stagger + tuning:
5. ESD failure remediation: Electrostatic discharge failure 静电放电故障拯救
6. Deep Shot Limiting (50%->75% reduction, improves thermals)：
7. Sensor Telemetry (temperature, voltages, alerts)：遥测
8. Submersion: 沉没 浸没
9. GM leak：
10. Added component to reduce **stray** light in optical system：走散迷失
11. RFP：request for proposal
12. RFI： *request for information*
13. DP：detection probability
14. yield：生产
15. Increase in range due to **increased pulse width and tuning**, OS2 8ns pulses, OS0/1 4.8ns pulses
    - OS0 -> all gains will go to performance
    - OS1 -> slight increase in range, slight increase in yield
    - OS2 -> yields stay the same
    - OS0/OS1 sensors in the field will see range boost
16. **Azimuth masking** refinement: better buffering scheme and disabling to nearest column, flip to be CCW 
17. Bug fix where PPS out was driving when MIO was set as input (can now drive two sensors with one GPS)
18. Schema for persistent user configs between firmware updates
19. Rx drift fix -- don’t need to restart sensor if experiencing Rx drift, an alert is thrown 
20. antler：鹿角
21. lubricants ：机油
22. stiffener/adhesives：粘合剂 glue
23. non-trivial：重大的
24. **DV Remediation**：
25. **EV / Pre-DV testing**：
26. **PV Testing** (C Sample)：
27. Is ASIC drift fixed? *Yes, fixed in next beta firmware, no need to reboot sensor*
28. Is deep shot limiting passive? *Yes, it will work the same way current shot limiting works -- baked programmatically into the sensor*
    - Decreases range by up to 25% and precision by 25% (estimated)
    - 50% Duty Cycle Shot Limiting (+10˚ past max operating temperature spec)
      - 1024x10, 512x10, 512x20 modes still meet spec
    - 75% Duty Cycle Shot Limiting (+15˚ past max operating temperature spec)
      - 512x10 mode still meets spec
29. toggle：n纽扣，V切换
30. Faceted Tx lens corrector：小面的
31. Turret heat spreader：砖塔角楼
32. Anodized top cap：阳极氧化的
33. Frosted Tx lens：被霜覆盖的
34. Lens hood：帽子引擎罩头巾
35. bilateral：双边的
36. What is the latency/ response time of the sensor?
    Latency is 0.95-3.8 ms depending on the model you’re using. The wider the field of view, the longer the latency.
37. 

