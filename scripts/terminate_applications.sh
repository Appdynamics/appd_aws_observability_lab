#!/bin/bash

sudo pkill -f db-agent.jar


echo "CloudWorkshop|INFO| - Stopping Local Application"
echo " "

cd /home/ec2-user/environment/modernization_workshop/applications/pre-modernization

/bin/bash ./stop_app.sh

echo " "
echo "CloudWorkshop|INFO| - Finished Stopping Local Application"
echo " "



#echo "CloudWorkshop|INFO| - Stopping EKS Application"
#echo " "

#cd ..
#cd post-modernization
#cd application

echo " "
echo "CloudWorkshop|INFO| - Starting EKS Cluster Deletion"
echo " "

cd /home/ec2-user/environment/modernization_workshop/applications/post-modernization

eksctl delete cluster -f ./cluster.yaml

echo " "
echo "CloudWorkshop|INFO| - Finished EKS Cluster Deletion"
echo " "
