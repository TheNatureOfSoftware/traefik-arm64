#!/bin/bash

QEMU_VERSION=v2.8.0
TRAEFIK_VERSION=v1.1.2

if [ ! -f qemu-aarch64-static ]; then
  wget https://github.com/multiarch/qemu-user-static/releases/download/$QEMU_VERSION/qemu-aarch64-static
  chmod a+x qemu-aarch64-static
fi

if [ ! -f traefik_linux-arm64 ]; then
  wget https://github.com/containous/traefik/releases/download/$TRAEFIK_VERSION/traefik_linux-arm64
  chmod a+x traefik_linux-arm64
fi

docker build -t thenatureofsoftware/traefik-arm64:$TRAEFIK_VERSION .
docker push thenatureofsoftware/traefik-arm64:latest
docker push thenatureofsoftware/traefik-arm64:$TRAEFIK_VERSION
