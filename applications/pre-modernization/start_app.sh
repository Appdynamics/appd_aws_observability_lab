#!/bin/bash

#set +x  # temporarily turn command display OFF.

find ./ -type f -iname "*.sh" -exec chmod +x {} \;

echo "CloudWorkshop|INFO| - Deploying Pre-Modernization Application ............................"

cd /home/ec2-user/environment/modernization_workshop/applications/pre-modernization

docker-compose -f ./.env/docker-compose.yaml up -d --build

