#!/usr/bin/env bash

containerName=$1
docker run -it --pid=container:$containerName \
  --net=container:$containerName \
  --cap-add sys_admin \
  --cap-add sys_ptrace \
  kevinclaudius/container-debug
