#!/bin/bash

cd /home/ec2-user/environment/modernization_workshop/applications/pre-modernization

docker-compose -f ./.env/docker-compose.yaml down
