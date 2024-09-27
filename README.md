# CTP接入测试

- [x] 接入openctp 7x24行情服务
- [x] 接入yijinjing
- [x] 仿照kungfu分布式架构，分离出apprentice和master

## 用法

- 编译
```
mkdir build && cd build
cmake .. && make
```
- 运行
```
./master
sleep 3

./md tcp://121.37.80.177:20004 sc2410 sc2411 sc2412 sc2501 sc2502
sleep 3

./strategy_runner
```