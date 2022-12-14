# 介绍

> 《幸福工厂》，是由 Coffee Stain 工作室开发的第一人称开放世界 3D 探索及工厂建造模拟游戏。
> 玩家在游戏中是一名被投放至外星球的工程师，手中只有有限的工具，需要采集行星上的资源建造复杂的自动化工厂。
> 游戏的最初目标是建造太空电梯，随后需要为母公司（Ficsit）提供复杂的元件。

## 快速开始

《幸福工厂》的 docker 镜像已经 push 到了 docker hub

只需要拉取镜像并运行一个实例（容器）即可，以下为实例命令：

```sh
docker run -d \
--restart=always \
--name satisfactory \
-v ~/satisfactory:/game \
-p 7777:7777/udp \
-p 15000:15000/udp \
-p 15777:15777/udp \
yunyizhiying/satisfactory:latest
```

## 注意

如果你在容器启动中遇到了错误，只需要重启容器即可，它会自动修复（通常失败的原因是因为网络导致服务器资源下载失败）

请不要随意删除已经创建的容器，那样在重新创建时会重新下载服务器资源

游戏存档位置为`/game/saves`, 游戏的服务器配置为`/game/config`, 实例命令中已经将它挂载到了`～/satisfactory`上，游戏配置已经解锁多人游戏上限为 16 人！

更新服务器：只需要重启容器即可，会自动执行更新！

## 致谢

感谢[wolveix](https://github.com/wolveix)的《幸福工厂》docker 镜像，给了我不少灵感，尤其是服务器优化上！

## 一些有用的文档

- [官网](https://www.satisfactorygame.com/)
- [交互式地图](https://satisfactory-calculator.com/en/interactive-map/)
- [MOD 平台](https://ficsit.app/)
- [官方论坛](https://questions.satisfactorygame.com/)
- [官方维基](https://satisfactory.fandom.com/wiki/Dedicated_servers)
