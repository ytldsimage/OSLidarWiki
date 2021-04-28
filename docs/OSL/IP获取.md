





```shell
cd /Users/jacky.xu/ouster_example_1.14-beta.10/ouster_viz/build

ifconfig | grep inet

ip=ifconfig | grep 169

echo ${ip: 6: 22}
```

