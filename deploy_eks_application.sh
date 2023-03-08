#!/bin/bash

##### Update RDS security group with EKS IPs

appd_wrkshp_last_setupstep_done="140"

java -DworkshopUtilsConf=./scripts/workshop-setup.yaml -DworkshopTeardownConf=./scripts/state/workshop-teardown.yaml -DworkshopAction=updatecloudsg -DlastSetupStepDone=${appd_wrkshp_last_setupstep_done} -DshowWorkshopBanner=false -jar ./AD-Workshop-Utils.jar

echo ""
echo "##############################################################################################################################################################"
echo " Start Deploying Application to EKS"
echo "##############################################################################################################################################################"
echo ""

##### Deploy application to EKS

cd applications
cd post-modernization
cd application
cd .env

kubectl create -f ./config-map.yaml

cd ..

kubectl create -f ./balance-services.yaml
kubectl create -f ./biz-loan-services.yaml
kubectl create -f ./per-loan-services.yaml
kubectl create -f ./account-management.yaml
kubectl create -f ./mongo-policies.yaml
kubectl create -f ./policy-services.yaml
kubectl create -f ./session-tracking.yaml
kubectl create -f ./authentication-services.yaml
kubectl create -f ./mongo-orders.yaml
kubectl create -f ./order-processing.yaml
kubectl create -f ./mongo-stocks.yaml
kubectl create -f ./quote-services.yaml
kubectl create -f ./web-front-end.yaml
kubectl create -f ./biz-loan-load-01.yaml
kubectl create -f ./browser-load.yaml
kubectl create -f ./per-loan-load-01.yaml

# Wait 30 seconds : 30 secs
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize .............................................................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ............................................................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ............................................................"
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ..........................................................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize .........................................................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ........................................................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ........................................................"
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ......................................................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ......................................................"
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ....................................................."
sleep 2
# Wait 30 seconds : 1 min
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ...................................................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ..................................................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize .................................................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ................................................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ................................................"
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ..............................................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize .............................................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ............................................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ............................................"
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ..........................................."
sleep 2
# Wait 30 seconds : 1.5 mins
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize .........................................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ........................................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ........................................"
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ......................................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ......................................"
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ....................................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ...................................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ..................................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize .................................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ................................."
sleep 2
# Wait 30 seconds : 2 mins
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ................................"
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ..............................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize .............................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ............................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ............................"
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ..........................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize .........................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ........................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ........................"
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ......................."
sleep 2
# Wait 30 seconds : 2.5 mins
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ......................"
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ....................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ...................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ..................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize .................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ................"
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ..............."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize .............."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ............."
sleep 2
# Wait 30 seconds : 3 mins
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ............"
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ..........."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize .........."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ........."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ........"
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ......."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ......"
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ....."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ...."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application to Initialize ..."
sleep 2
echo ""
echo "##############################################################################################################################################################"
echo " Finished Deploying Application to EKS"
echo "##############################################################################################################################################################"
echo ""

