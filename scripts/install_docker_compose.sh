#!/bin/bash

#set +x  # temporarily turn command display OFF.
echo "####################################################################################################"
echo " Start Installing Docker Compose"
echo "####################################################################################################"
echo ""

sudo curl --silent -L https://github.com/docker/compose/releases/download/1.27.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

echo "Installed docker-compose version is:"
docker-compose version
echo ""

echo "####################################################################################################"
echo " Finished Installing Docker Compose"
echo "####################################################################################################"
echo ""