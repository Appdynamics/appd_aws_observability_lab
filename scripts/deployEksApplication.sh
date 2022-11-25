#!/bin/bash

##### Update RDS security group with EKS IPs

appd_wrkshp_last_setupstep_done="140"

java -DworkshopUtilsConf=/opt/appdynamics/appd_lab_repo/scripts/workshop-setup.yaml -DworkshopTeardownConf=/opt/appdynamics/workshopuser/state/workshop-teardown.yaml -DworkshopAction=updatecloudsg -DlastSetupStepDone=${appd_wrkshp_last_setupstep_done} -DshowWorkshopBanner=false -jar /opt/appdynamics/appd_lab_repo/scripts/AD-Workshop-Utils.jar


#echo "CloudWorkshop|INFO|     - Deploying Application to the EKS Cluster"
echo "CloudWorkshop|INFO| - Start Deploying Application to EKS Cluster"

cd /opt/appdynamics/workshopuser

kubectl create -f post-mod-kube-app/

# Wait 30 seconds : 30 secs
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize .............................................................."
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ............................................................."
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ............................................................"
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ..........................................................."
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize .........................................................."
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ........................................................."
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ........................................................"
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ......................................................."
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ......................................................"
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ....................................................."
sleep 3
# Wait 30 seconds : 1 min
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ...................................................."
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ..................................................."
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize .................................................."
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ................................................."
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ................................................"
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ..............................................."
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize .............................................."
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ............................................."
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ............................................"
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ..........................................."
sleep 3
# Wait 30 seconds : 1.5 mins
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize .........................................."
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ........................................."
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ........................................"
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ......................................."
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ......................................"
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ....................................."
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ...................................."
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ..................................."
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize .................................."
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ................................."
sleep 3
# Wait 30 seconds : 2 mins
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ................................"
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ..............................."
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize .............................."
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ............................."
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ............................"
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ..........................."
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize .........................."
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ........................."
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ........................"
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ......................."
sleep 3
# Wait 30 seconds : 2.5 mins
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ......................"
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ....................."
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ...................."
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ..................."
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize .................."
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ................."
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ................"
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ..............."
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize .............."
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ............."
sleep 3
# Wait 30 seconds : 3 mins
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ............"
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ..........."
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize .........."
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ........."
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ........"
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ......."
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ......"
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ....."
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ...."
sleep 3
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ..."
sleep 3
echo "CloudWorkshop|INFO| - Finished Deploying Application to EKS Cluster"

