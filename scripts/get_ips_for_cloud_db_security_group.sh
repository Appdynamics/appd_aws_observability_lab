#!/bin/bash

if [ ! -d ./scripts/state ]; then
  mkdir scripts/state
fi


##### Get the public IP address for the local host and store in file

#ec2-metadata -v | awk '{print $2}' > ./scripts/state/localpubip.txt

if [ -f ./scripts/state/localpubip.txt ]; then
  mv ./scripts/state/localpubip.txt ./scripts/state/localpubip.txt.old
  ec2-metadata -v | awk '{print $2}' > ./scripts/state/localpubip.txt
else
  ec2-metadata -v | awk '{print $2}' > ./scripts/state/localpubip.txt
  cp ./scripts/state/localpubip.txt ./scripts/state/localpubip.txt.old
fi


##### Get the private IP address for the local host and store in file

#ec2-metadata -o | awk '{print $2}' > ./scripts/state/localprivip.txt

if [ -f ./scripts/state/localprivip.txt ]; then
  mv ./scripts/state/localprivip.txt ./scripts/state/localprivip.txt.old
  ec2-metadata -o | awk '{print $2}' > ./scripts/state/localprivip.txt
else
  ec2-metadata -o | awk '{print $2}' > ./scripts/state/localprivip.txt
  cp ./scripts/state/localprivip.txt ./scripts/state/localprivip.txt.old
fi


##### Get the public IP addresses for the Kubernetes worker nodes and store in file

#kubectl get nodes -o wide | awk '/ip-/ {print $7}' > ./scripts/state/clusterpubips.txt

if [ -f ./scripts/state/clusterpubips.txt ]; then
  mv ./scripts/state/clusterpubips.txt ./scripts/state/clusterpubips.txt.old
  kubectl get nodes -o wide | awk '/ip-/ {print $7}' > ./scripts/state/clusterpubips.txt
else
  kubectl get nodes -o wide | awk '/ip-/ {print $7}' > ./scripts/state/clusterpubips.txt
  cp ./scripts/state/clusterpubips.txt ./scripts/state/clusterpubips.txt.old
fi


##### Get the private IP addresses for the Kubernetes worker nodes and store in file

#kubectl get nodes -o wide | awk '/ip-/ {print $6}' > ./scripts/state/clusterprivips.txt

if [ -f ./scripts/state/clusterprivips.txt ]; then
  mv ./scripts/state/clusterprivips.txt ./scripts/state/clusterprivips.txt.old
  kubectl get nodes -o wide | awk '/ip-/ {print $6}' > ./scripts/state/clusterprivips.txt
else
  kubectl get nodes -o wide | awk '/ip-/ {print $6}' > ./scripts/state/clusterprivips.txt
  cp ./scripts/state/clusterprivips.txt ./scripts/state/clusterprivips.txt.old
fi
