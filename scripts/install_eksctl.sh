#!/bin/bash

#set +x  # temporarily turn command display OFF.
echo "####################################################################################################"
echo " Start Installing EKSCTL"
echo "####################################################################################################"
echo ""

sudo curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin

echo ""
echo "Installed eksctl version is:"
eksctl version
echo ""

echo "####################################################################################################"
echo " Finished Installing EKSCTL"
echo "####################################################################################################"
echo ""