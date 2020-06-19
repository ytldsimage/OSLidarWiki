# Ouster Studio

> 由于与VLP同底层，而OS Lidar 相对VLP增加了环境光数据及惯导数据，所以在win下兼容性不是很好
>
> ASIC2019：https://www.paraview.org/ousterstudio/
>
> ASIC2020：[MacOS ](https://go.ouster.io/cs/c/?cta_guid=bd744496-2789-4b1a-9e99-056d8f903650&placement_guid=ade40460-6a37-48b6-b859-fa0e52255fdd&portal_id=5054152&canon=https%3A%2F%2Fgo.ouster.io%2Fbeta-program%2Fbeta-10%2F&redirect_url=APefjpGL0f9utGe7o-_n0QsCgbVEnkoUZINTNZZSUsxlSq7QQbbWqCoHsgJDHY5O5_hx7JlpaXFMwsi6-6s3JtpUrF3I4udSz3dVU-lAFieeYO_36NupvDgZiZMzVwAJ-rBjhHZ0H8AzZcOG8He_NDntDXLD065E5FLMrKy9AUYMhR9CGahhN6qY8GBdiL_spFztk3g6bx6SeH79kK81jcIKq8kUw1jwafON80VBEfzihahx1XW5mr8kAbX53fZeHGciYboBCGXjJmOMrHmxAAvEEXl326BYkwEkhiz2IlUsOOPs8wOgXjw&click=60ac7970-0775-44a7-965d-2a612afd11ed&hsutk=f7f9fa89a9b3a83930a447116d9a1796&signature=AAH58kHpLh7z9ltlPe1OjGbqL72dRpjnyQ&pageId=29569243223&__hstc=82216777.f7f9fa89a9b3a83930a447116d9a1796.1589280439546.1592541417311.1592549839117.7&__hssc=82216777.1.1592549839117&__hsfp=2237477749&contentType=landing-page)   [WinOS](https://go.ouster.io/cs/c/?cta_guid=89a2d6b1-39af-4702-9cbe-cc220ba8c8a8&placement_guid=c19f3bee-095c-4adc-921a-0a9d7d5f8a0b&portal_id=5054152&canon=https%3A%2F%2Fgo.ouster.io%2Fbeta-program%2Fbeta-10%2F&redirect_url=APefjpEqoB-q3fAVEDbbpuP0SizBBYctyIWBST-vgVRmTzuH6AYm8EaW0mVASQrYHW0XKZekB_MLZCPyB-Ks6vdsqlJ4WM2Orn_AQOsncqXziUNlYnG77vHzRwmwxaVjGhL7fQmA5atJ8NAMdsbZ2kXiu7WWYIfiTAUlbe7H7C8oQmDCJ4UCyi9vIUG6lLk_3-hfxKPwHQtZLpc0kFc_DMSPWBCvQ_MC0yG9aWhQ1vG5VlcM6fRm4Zr3orapP6DaVWHLKSWjE978pXfyOKFsiu2dWiwiYcsW5OmPm3INPHQf6HH0b6AjS4g&click=b68145b9-a74b-46bc-8735-135f372a03e4&hsutk=f7f9fa89a9b3a83930a447116d9a1796&signature=AAH58kF9lKKCbJ0rwSESX64wyGY8A4Fl9Q&pageId=29569243223&__hstc=82216777.f7f9fa89a9b3a83930a447116d9a1796.1589280439546.1592541417311.1592549839117.7&__hssc=82216777.1.1592549839117&__hsfp=2237477749&contentType=landing-page)    [Ubuntu](https://go.ouster.io/cs/c/?cta_guid=960c9f5e-c39a-48c0-9780-8e8eb1e620fa&placement_guid=f479e2d1-d422-414b-92c5-0c2bde378087&portal_id=5054152&canon=https%3A%2F%2Fgo.ouster.io%2Fbeta-program%2Fbeta-10%2F&redirect_url=APefjpEb16cYZd3rpTxn22Gh7pDnj9E28C0eSb7Kx14pCXgQGlIpK6kiAX6WRs4z5bFTqbCGmyvqBe-wgrYTRhtzrWe-TBWVYPUqaCUBvv58mIBou0EHo_FROGPEi5hTVwyP4WouD3-Y46KppcoEn8KLVaAGd3Tkw5U1cf73M8h6ZsuGrY5WA_w67JEc6fXoyICihYeVeeRNjzham01-ejP0Ad5AE3KQdrJVr1YkS7qb_A_9DLv4cisW-j7MogWogG9WQYRlh4lXVPZEQx3SP0tow5SxrRuPJaQyo-clGFe0JianTkjL_tI&click=60558eb0-367d-4e7c-8baf-60c9d56297a5&hsutk=f7f9fa89a9b3a83930a447116d9a1796&signature=AAH58kEKb_xJqTXI6DlDBfiUMedhFutt5A&pageId=29569243223&__hstc=82216777.f7f9fa89a9b3a83930a447116d9a1796.1589280439546.1592541417311.1592549839117.7&__hssc=82216777.1.1592549839117&__hsfp=2237477749&contentType=landing-page)
>
> 数据样例：https://data.ouster.io/downloads/lombard_street_OS1.pcap
>
> [操作手册](https://ouster.atlassian.net/wiki/spaces/SUPPORT/pages/924090373?atlOrigin=eyJpIjoiNTk4MWFjMjk3MzgxNGRlNzg0NjI5Njc0OGY3ODkwN2IiLCJwIjoiYyJ9)：https://data.ouster.io/downloads/Ouster-Studio-user-guide.pdf

---
### Windows Studio 连接注意事项：

- https://drive.weixin.qq.com/s?k=AEYARQeBAAYdDiQZaXAE4AvQanABU
- 关闭wifi及防火墙后，记得重启；注意IPV6，bonjoursdksetup见如下链接：
- https://drive.weixin.qq.com/s?k=AEYARQeBAAY4QxoP0rAE4AvQanABU

### Windows Studio 配置注意事项：

- 默认1024*10，如果选配其他模式，有可能Studio没有真正配成功，这个时候需要多配几次，这个是studio的bug
- 如果发现报错，先检查线缆连接与供电，然后用浏览器访问OS1-SN.local或OS-SN.local检查一下是否可以访问，同时Ping一下对应IP或host



[回首页](README)