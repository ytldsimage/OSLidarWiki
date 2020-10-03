# Ouster Studio

> 由于与VLP同底层，而OS Lidar 相对VLP增加了环境光数据及惯导数据，所以在win下兼容性不是很好
>
> ASIC2019：https://www.paraview.org/ousterstudio/
>
> ASIC2020：[MacOS ](https://go.ouster.io/cs/c/?cta_guid=bd744496-2789-4b1a-9e99-056d8f903650&placement_guid=ade40460-6a37-48b6-b859-fa0e52255fdd&portal_id=5054152&canon=https%3A%2F%2Fgo.ouster.io%2Fbeta-program%2Fbeta-10%2F&redirect_url=APefjpGjAbfYqpTzh9QP5u5W3bKHnZ3QrJo91A1SwUtCi0A6jPvTYaZNu8aogqkhNSAwJg7UEcW1wUnk---ynF7HVqR6zBDn3kZqtH0LFtK7FaHVz54CRM30xLTH8alMWKo2BuebYt41ctEv326hDaLoMzs7tnpQ0NSltbfA-JvdVfR2ElnB9tM&click=af5077b3-72f1-4fdf-86ff-95ccdeca9ec0&hsutk=7b1c51587557cc04d5a9038ba7ea88b3&signature=AAH58kEM7RmMf8sKhmYJcy751Qx42Nx9hA&pageId=29569243223&__hstc=82216777.7b1c51587557cc04d5a9038ba7ea88b3.1601731472859.1601731472859.1601731472859.1&__hssc=82216777.1.1601731472859&__hsfp=432711229&contentType=landing-page)   [WinOS](https://go.ouster.io/cs/c/?cta_guid=89a2d6b1-39af-4702-9cbe-cc220ba8c8a8&placement_guid=c19f3bee-095c-4adc-921a-0a9d7d5f8a0b&portal_id=5054152&canon=https%3A%2F%2Fgo.ouster.io%2Fbeta-program%2Fbeta-10%2F&redirect_url=APefjpGflKWuC4y_TXKoPzWVzcU8UJ3wmeZBPmbSWJSeu8rZNqw40fQPw44wvycGDukPy68vos_mPFFEwEyjTq1oGEDPDWgDrYSo8JD0mivatSQ7YYWmW_mLtcNfl0MAnc9dlOzhOoHlP3YnC7Xa9DefiCjs3_VTkwry3ZeQ9_gOLJ6i1UelB3k&click=25cea1bf-799a-4755-9fc9-74181a7f10b0&hsutk=7b1c51587557cc04d5a9038ba7ea88b3&signature=AAH58kE8UB58MI9a80tfuFwgFk_YHQAQCA&pageId=29569243223&__hstc=82216777.7b1c51587557cc04d5a9038ba7ea88b3.1601731472859.1601731472859.1601731472859.1&__hssc=82216777.1.1601731472859&__hsfp=432711229&contentType=landing-page)    [Ubuntu](https://go.ouster.io/cs/c/?cta_guid=960c9f5e-c39a-48c0-9780-8e8eb1e620fa&placement_guid=f479e2d1-d422-414b-92c5-0c2bde378087&portal_id=5054152&canon=https%3A%2F%2Fgo.ouster.io%2Fbeta-program%2Fbeta-10%2F&redirect_url=APefjpGLS8Xpwlxfjx0I6EtQv_QuOOAoiXJPwkQiZln47QCkCILGLjLHJMBl70LRA5F6TzC1pAD8H3fDPyf574DXFk-8XhjfPh0jqEOvnfblmBnL61kfgY8AWCB_kq6zLAplXVTvi9PJGKKckaxoWLDyO2KOc8JktL_kDu745MyzAaixGlm495w&click=478db081-a864-4b96-a9a6-188f3a56050b&hsutk=7b1c51587557cc04d5a9038ba7ea88b3&signature=AAH58kHDLZ2hPJPOH-W6jcFfU389BLCIlQ&pageId=29569243223&__hstc=82216777.7b1c51587557cc04d5a9038ba7ea88b3.1601731472859.1601731472859.1601731472859.1&__hssc=82216777.1.1601731472859&__hsfp=432711229&contentType=landing-page)
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