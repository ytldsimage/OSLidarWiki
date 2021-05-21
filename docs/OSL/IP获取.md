





```shell
cd /Users/jacky.xu/ouster_example_1.14-beta.10/ouster_viz/build

ifconfig | grep inet

ip=ifconfig | grep 169

echo ${ip: 6: 22}

 ./simple_viz -m 2048x10    os-992036000040.local    169.254.1.1 
```

