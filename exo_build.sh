#!/bin/bash

go mod tidy
go mod vendor

docker build \
    -t nvcr.io/nvidia/k8s-device-plugin:devel \
    -f deployments/container/Dockerfile.ubuntu \
    .

docker tag nvcr.io/nvidia/k8s-device-plugin:devel 374070299695.dkr.ecr.us-east-2.amazonaws.com/xgo/nvidia-device-plugin:latest
docker push 374070299695.dkr.ecr.us-east-2.amazonaws.com/xgo/nvidia-device-plugin:latest

