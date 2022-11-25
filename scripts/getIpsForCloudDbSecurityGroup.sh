#!/bin/bash

if [ ! -d /opt/appdynamics/workshopuser/state ]; then
  mkdir /opt/appdynamics/workshopuser/state
fi


##### Get the public IP address for the local host and store in file

#ec2-metadata -v | awk '{print $2}' > /opt/appdynamics/workshopuser/state/localpubip.txt

if [ -f /opt/appdynamics/workshopuser/state/localpubip.txt ]; then
  mv /opt/appdynamics/workshopuser/state/localpubip.txt /opt/appdynamics/workshopuser/state/localpubip.txt.old
  ec2-metadata -v | awk '{print $2}' > /opt/appdynamics/workshopuser/state/localpubip.txt
else
  ec2-metadata -v | awk '{print $2}' > /opt/appdynamics/workshopuser/state/localpubip.txt
  cp /opt/appdynamics/workshopuser/state/localpubip.txt /opt/appdynamics/workshopuser/state/localpubip.txt.old
fi


##### Get the private IP address for the local host and store in file

#ec2-metadata -o | awk '{print $2}' > /opt/appdynamics/workshopuser/state/localprivip.txt

if [ -f /opt/appdynamics/workshopuser/state/localprivip.txt ]; then
  mv /opt/appdynamics/workshopuser/state/localprivip.txt /opt/appdynamics/workshopuser/state/localprivip.txt.old
  ec2-metadata -o | awk '{print $2}' > /opt/appdynamics/workshopuser/state/localprivip.txt
else
  ec2-metadata -o | awk '{print $2}' > /opt/appdynamics/workshopuser/state/localprivip.txt
  cp /opt/appdynamics/workshopuser/state/localprivip.txt /opt/appdynamics/workshopuser/state/localprivip.txt.old
fi


##### Get the public IP addresses for the Kubernetes worker nodes and store in file

#kubectl get nodes -o wide | awk '/ip-/ {print $7}' > /opt/appdynamics/workshopuser/state/clusterpubips.txt

if [ -f /opt/appdynamics/workshopuser/state/clusterpubips.txt ]; then
  mv /opt/appdynamics/workshopuser/state/clusterpubips.txt /opt/appdynamics/workshopuser/state/clusterpubips.txt.old
  kubectl get nodes -o wide | awk '/ip-/ {print $7}' > /opt/appdynamics/workshopuser/state/clusterpubips.txt
else
  kubectl get nodes -o wide | awk '/ip-/ {print $7}' > /opt/appdynamics/workshopuser/state/clusterpubips.txt
  cp /opt/appdynamics/workshopuser/state/clusterpubips.txt /opt/appdynamics/workshopuser/state/clusterpubips.txt.old
fi


##### Get the private IP addresses for the Kubernetes worker nodes and store in file

#kubectl get nodes -o wide | awk '/ip-/ {print $6}' > /opt/appdynamics/workshopuser/state/clusterprivips.txt

if [ -f /opt/appdynamics/workshopuser/state/clusterprivips.txt ]; then
  mv /opt/appdynamics/workshopuser/state/clusterprivips.txt /opt/appdynamics/workshopuser/state/clusterprivips.txt.old
  kubectl get nodes -o wide | awk '/ip-/ {print $6}' > /opt/appdynamics/workshopuser/state/clusterprivips.txt
else
  kubectl get nodes -o wide | awk '/ip-/ {print $6}' > /opt/appdynamics/workshopuser/state/clusterprivips.txt
  cp /opt/appdynamics/workshopuser/state/clusterprivips.txt /opt/appdynamics/workshopuser/state/clusterprivips.txt.old
fi
