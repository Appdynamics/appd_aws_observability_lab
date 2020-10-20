#!/bin/bash

echo "CloudWorkshop|INFO|     - Creating namespace for Cluster Agent"

cd /opt/appdynamics/workshopuser/post-mod-kube-ca

kubectl create namespace appdynamics

sleep 2

echo ""
echo "CloudWorkshop|INFO|     - Deploying Cluster Agent Operator"

kubectl create -f cluster-agent-operator.yaml

sleep 3

kubectl -n appdynamics create secret generic cluster-agent-secret --from-literal=controller-key=$1

sleep 3

echo ""
echo "CloudWorkshop|INFO|     - Deploying Cluster Agent"

kubectl create -f cluster-agent.yaml

sleep 3

echo ""
echo "CloudWorkshop|INFO|     - Deploying Kubernetes Metrics Server"

kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/download/v0.3.6/components.yaml
