# Introduction

<p align="center"> <a href="https://github.com/jinzhongjia/DockerGame/blob/main/Satisfactory/README_CN.md">中文</a> </p>

> Satisfactory is a factory simulation game created by Swedish video game developer Coffee Stain Studios.
> It is a 3D first-person open world exploration and factory building game.
> The player, a pioneer, is dropped onto an alien planet with a handful of tools and must harvest the planet's natural resources to construct increasingly complex factories for automating all resource needs.
> The initial goal is to build a space elevator and begin supplying the company the player works for (FICSIT Inc.) with increasingly numerous and complex components for their unknown purposes.
> Those exports unlock new buildings that make the next export possible.

## QuickStart

Satisfactory docker image has been pushed to docker hub

To use it, you just pull image and run it!

**commond**:

```sh
docker run -d \
-v ~/satisfactory:/game \
-p 7777:7777/udp \
-p 15000:15000/udp \
-p 15777:15777/udp \
yunyizhiying/satisfactory:latest
```

## Note

If you meet errors, you just can restart the container, the container will fix itself soon.

Don't remove container(that mean you must download the game resources again)

The game's archive is under /game/saves, the example command will mount it to ~/satisfactory.

_!! Unlocked multiplayer limit of 16 players._

**How to update server**?

You just restart the container, it will auto update, let's enjoy!

## Thanks

Thanks to [wolveix](https://github.com/wolveix)'s satisfaactory docker project, it gave me inspiration, especially for server-side optimization
