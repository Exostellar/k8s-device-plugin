#!/bin/bash

helm upgrade --install nvdp ./deployments/helm/nvidia-device-plugin \
  --namespace nvidia-device-plugin \
  --create-namespace \
  -f deployments/helm/nvidia-device-plugin/values.yaml

kubectl rollout restart daemonset nvdp-nvidia-device-plugin -n nvidia-device-plugin

