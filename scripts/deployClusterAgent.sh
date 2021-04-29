#!/bin/bash

echo "CloudWorkshop|INFO| - Deploying Cluster Agent to Kubernetes Cluster"

cd /opt/appdynamics/workshopuser/post-mod-kube-ca

# - Creating the namespace for the Cluster Agent

kubectl create namespace appdynamics

sleep 2

# - Deploying Cluster Agent Operator

kubectl create -f cluster-agent-operator.yaml

sleep 3

# - Creating Cluster Agent Access Key

kubectl -n appdynamics create secret generic cluster-agent-secret --from-literal=controller-key=${ADWRKSHP_ACCT_ACCESS_KEY}

sleep 3

# - Deploying Cluster Agent

kubectl create -f cluster-agent.yaml

sleep 3

# - Deploying Kubernetes Metric Server

kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml

echo "CloudWorkshop|INFO| - Finished Deploying Cluster Agent to Kubernetes Cluster"