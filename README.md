# OpenWRT-Builder

OpenWRT build environment in docker

## Usage

```bash
docker pull sbilly/openwrt-builder:latest

docker run -ti --rm --name openwrt-builder -v `pwd`:/home/user sbilly/openwrt-builder:latest  /bin/bash

```

## Thanks

- [docker-openwrt-builder](https://github.com/mwarning/docker-openwrt-builder)