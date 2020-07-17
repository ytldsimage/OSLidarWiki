# Ouster Studio

> 由于与VLP同底层，而OS Lidar 相对VLP增加了环境光数据及惯导数据，所以在win下兼容性不是很好
>
> ASIC2019：https://www.paraview.org/ousterstudio/
>
> ASIC2020：[MacOS ](https://go.ouster.io/cs/c/?cta_guid=bd744496-2789-4b1a-9e99-056d8f903650&placement_guid=ade40460-6a37-48b6-b859-fa0e52255fdd&portal_id=5054152&canon=https%3A%2F%2Fgo.ouster.io%2Fbeta-program%2Fbeta-10%2F&redirect_url=APefjpHKHUppAoBCIFx23oSGdVVUN7m6Ln1xgitfIMZnD5xPR1df_L_9NgU9ZQpqZgm2LmXaAqaS05U7ToPIj8XrM90JBRH3YXLMlQx7BW2DpLMwiX1MSiyRko70ZXC-RsxTNECorwALSga8Tl8W0Hfkvw9eHzGDj3sMyjZ6mx9Ih6dYpTYYDTDtGPAZ2FoGgegJsLIb0yS7FJWGXYbmFJ9Ijfc1jXUAvR0B5rS4jLGu8j6ui0CwRQCApvxG6FzP9BhFtqInYVO9V6hngMNg3yb8EKeBt5gaFwxD2aGEOMuFB-FvpTPMJwU&click=11b0b6ff-59ff-4e0f-a23a-09d212ed4654&hsutk=f7f9fa89a9b3a83930a447116d9a1796&signature=AAH58kFiULUf52iKM_ikqlYmcBnqjsbzsg&utm_referrer=https%3A%2F%2Fgo.ouster.io%2Fbeta-program%2Fbeta-12%2F&pageId=29569243223&__hstc=82216777.f7f9fa89a9b3a83930a447116d9a1796.1589280439546.1593315868863.1594976668255.12&__hssc=82216777.1.1594976668255&__hsfp=541242985&contentType=landing-page)   [WinOS](https://go.ouster.io/cs/c/?cta_guid=89a2d6b1-39af-4702-9cbe-cc220ba8c8a8&placement_guid=c19f3bee-095c-4adc-921a-0a9d7d5f8a0b&portal_id=5054152&canon=https%3A%2F%2Fgo.ouster.io%2Fbeta-program%2Fbeta-10%2F&redirect_url=APefjpFPIxxp2QtQGriGtGiMtJq0TeQUm9Wp9KcwSzXHxp3Sw-1q_svhzPCOf7x1xqe11lSpBoZrwROUzR1ynQko-u9QDnzR7flDZafRlQq31083AfOVphZWObXYsOs3PKhlvn2dfEYrXLpaobpKYjMFjastEm98yhCun4zj0Lu0AFY7rpVXFYub1o5NisiVviyzO9EOkqUhgs-ksb-jAGymTfbSJRFmKCDGWxfxnzie234W2NEFn9-DS5-l06WGBnxO9eRRH--8B5iJ_Ti6QjqQD8y9Fc6xkFrw0etrHfEY1H0fRyqwLx0&click=3fbca559-f06f-446f-b1c3-ac6eda3c7200&hsutk=f7f9fa89a9b3a83930a447116d9a1796&signature=AAH58kE930qa6rNta96-s7cttuyBevnvHA&utm_referrer=https%3A%2F%2Fgo.ouster.io%2Fbeta-program%2Fbeta-12%2F&pageId=29569243223&__hstc=82216777.f7f9fa89a9b3a83930a447116d9a1796.1589280439546.1593315868863.1594976668255.12&__hssc=82216777.1.1594976668255&__hsfp=541242985&contentType=landing-page)    [Ubuntu](https://go.ouster.io/cs/c/?cta_guid=960c9f5e-c39a-48c0-9780-8e8eb1e620fa&placement_guid=f479e2d1-d422-414b-92c5-0c2bde378087&portal_id=5054152&canon=https%3A%2F%2Fgo.ouster.io%2Fbeta-program%2Fbeta-10%2F&redirect_url=APefjpFKkhqrSRzJFbjsrpA6WNUgFn6V8ddaQHYzhdBZtLx3vwgV77IVPRaPkUeDZWvX78oITtJagqILLZHKE2iam8crewgWPOELjSw9eaidYCQs5DuAP-nQXRirDdxaf3jC8BGl9_t9EHgEa_BcyH9Oj7fp6pgJq42eCsolJLHiKWrqDtnh5yYTkQnmiKIKv8cp7TjAnHDDNhcrtVZsjUqzR1x5oABC8-wkdLjP8W7gQzCWMNIOGKY7H58V-QHL8FPFdG8dH2DAIWcjpCrGdpE9UDIvfiDczC3YbBSCUN0SRLYzR_aHuro&click=9eae6814-8d64-4b39-9dc9-ba0bdbcb8d16&hsutk=f7f9fa89a9b3a83930a447116d9a1796&signature=AAH58kH_jyW1je_4agHtTyBXv-qkhEySdA&utm_referrer=https%3A%2F%2Fgo.ouster.io%2Fbeta-program%2Fbeta-12%2F&pageId=29569243223&__hstc=82216777.f7f9fa89a9b3a83930a447116d9a1796.1589280439546.1593315868863.1594976668255.12&__hssc=82216777.1.1594976668255&__hsfp=541242985&contentType=landing-page)
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