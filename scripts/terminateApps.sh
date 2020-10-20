#!/bin/bash

sudo pkill -f db-agent.jar

echo "CloudWorkshop|INFO| - Stopping Local Docker Application"
echo " "

/opt/appdynamics/workshopuser/pre-mod-docker/stop.sh

echo " "
echo "CloudWorkshop|INFO| - Finished Stopping Local Docker Application"

echo " "

echo "CloudWorkshop|INFO| - Starting EKS Cluster Deletion"
echo " "

eksctl delete cluster -f /opt/appdynamics/workshopuser/post-mod-kube-cluster/cluster.yaml

echo " "
echo "CloudWorkshop|INFO| - Finished EKS Cluster Deletion"
