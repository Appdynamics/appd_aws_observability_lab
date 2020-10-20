#!/bin/bash

#
# Utility script to initialize the workshop prerequisites on the Cloud9 EC2 instance
#
# 
#
# NOTE: All inputs are defined by external environment variables.
#       Optional variables have reasonable defaults, but you may override as needed.
#---------------------------------------------------------------------------------------------------

#set -x  # turn command display back ON.

##### Increase the EBS disk size to 80GB


if [ $(readlink -f /dev/xvda1) = "/dev/xvda1" ]
then
  # Rewrite the partition table so that the partition takes up all the space that it can.
  sudo growpart /dev/xvda 1
 
  # Expand the size of the file system.
  sudo resize2fs /dev/xvda1

else
  # Rewrite the partition table so that the partition takes up all the space that it can.
  sudo growpart /dev/nvme0n1 1

  # Expand the size of the file system.
  sudo resize2fs /dev/nvme0n1p1

fi

##### Install KUBECTL

sudo curl --silent --location -o /usr/local/bin/kubectl https://amazon-eks.s3.us-west-2.amazonaws.com/1.17.9/2020-08-04/bin/linux/amd64/kubectl

sudo chmod +x /usr/local/bin/kubectl

echo ""
echo "Installed kubectl version is:"
kubectl version --short --client


##### Upgrade AWS CLI - MAY NOT NEED TO DO THIS !!!
# sudo pip install --upgrade awscli && hash -r


##### Install EKSCTL

sudo curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp

sudo mv /tmp/eksctl /usr/local/bin

echo ""
echo "Installed eksctl version is:"
eksctl version


##### Install Docker-Compose

sudo curl --silent -L https://github.com/docker/compose/releases/download/1.27.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

echo ""
echo "Installed docker-compose version is:"
docker-compose version

