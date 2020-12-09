#!/bin/bash

# COPY FILES FOR PRE-MOD APP
cp /opt/appdynamics/workshopuser/pre-mod-docker/*.* /home/ec2-user/environment/deployment/pre-mod-docker/


# COPY FILES FOR POST-MOD APP
cp /opt/appdynamics/workshopuser/post-mod-kube-app/*.* /home/ec2-user/environment/deployment/post-mod-kube-app/

cp /opt/appdynamics/workshopuser/post-mod-kube-ca/*.* /home/ec2-user/environment/deployment/post-mod-kube-ca/

cp /opt/appdynamics/workshopuser/post-mod-kube-cluster/*.* /home/ec2-user/environment/deployment/post-mod-kube-cluster/

cp /opt/appdynamics/workshopuser/post-mod-kube-ma/*.* /home/ec2-user/environment/deployment/post-mod-kube-ma/


# COPY SHELL FILES
cp /opt/appdynamics/workshopuser/deployClusterAgent.sh /home/ec2-user/environment/deployment/

cp /opt/appdynamics/workshopuser/deployEksApplication.sh /home/ec2-user/environment/deployment/

cp /opt/appdynamics/workshopuser/deployEksCluster.sh /home/ec2-user/environment/deployment/

cp /opt/appdynamics/workshopuser/deployMachineAgent.sh /home/ec2-user/environment/deployment/

