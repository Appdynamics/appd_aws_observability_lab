#!/bin/bash

java -DworkshopUtilsConf=/opt/appdynamics/workshopuser/teardown/workshop-teardown.yaml -DworkshopAction=teardown -DshowWorkshopBanner=true -jar /opt/appdynamics/appd_lab_repo/scripts/AD-Workshop-Utils.jar

#sudo rm -r -f /opt/appdynamics
