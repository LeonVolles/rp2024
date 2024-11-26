#!/bin/bash

#render=nvidia
render=base

uid=$(eval "id -u")
gid=$(eval "id -g")
#gid=1000

docker build \
  --build-arg RENDER="$render" \
  --build-arg UID="$uid" \
  --build-arg GID="$gid" \
  -f bullet.Dockerfile \
  -t rp2024/bullet .
