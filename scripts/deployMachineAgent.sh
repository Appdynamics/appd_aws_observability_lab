#!/bin/bash

echo "CloudWorkshop|INFO|     - Deploying Machine Agent to the Kubernetes Cluster ........."

sleep 3

cd /opt/appdynamics/workshopuser

kubectl create -f post-mod-kube-ma/ma-log-config.yaml

sleep 3

echo "CloudWorkshop|INFO|     - Deploying Machine Agent to the Kubernetes Cluster ......."

kubectl create -f post-mod-kube-ma/rbac.yaml

sleep 3

echo "CloudWorkshop|INFO|     - Deploying Machine Agent to the Kubernetes Cluster ....."

kubectl create -f post-mod-kube-ma/machine-agent.yaml

sleep 3

echo "CloudWorkshop|INFO|     - Deploying Machine Agent to the Kubernetes Cluster ..."

sleep 3

echo "CloudWorkshop|INFO|     - Deploying Machine Agent to the Kubernetes Cluster .."
