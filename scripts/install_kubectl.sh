#!/bin/bash

#set +x  # temporarily turn command display OFF.
echo "####################################################################################################"
echo " Start Installing KUBECTL"
echo "####################################################################################################"
echo ""

sudo curl --silent --location -o /usr/local/bin/kubectl https://amazon-eks.s3.us-west-2.amazonaws.com/1.19.6/2021-01-05/bin/linux/amd64/kubectl
sudo chmod +x /usr/local/bin/kubectl

echo ""
echo "Installed kubectl version is:"
kubectl version --short --client
echo ""

echo "####################################################################################################"
echo " Finished Installing KUBECTL"
echo "####################################################################################################"
echo ""