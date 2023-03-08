#!/bin/bash

echo ""
echo "##############################################################################################################################################################"
echo " Start Undeployment of Application plus Configuration from EKS"
echo "##############################################################################################################################################################"
echo ""

cd ..
cd applications
cd post-modernization
cd application

kubectl delete -f ./balance-services.yaml
kubectl delete -f ./biz-loan-services.yaml
kubectl delete -f ./per-loan-services.yaml
kubectl delete -f ./account-management.yaml
kubectl delete -f ./mongo-policies.yaml
kubectl delete -f ./policy-services.yaml
kubectl delete -f ./session-tracking.yaml
kubectl delete -f ./authentication-services.yaml
kubectl delete -f ./mongo-orders.yaml
kubectl delete -f ./order-processing.yaml
kubectl delete -f ./mongo-stocks.yaml
kubectl delete -f ./quote-services.yaml
kubectl delete -f ./web-front-end.yaml
kubectl delete -f ./biz-loan-load-01.yaml
kubectl delete -f ./browser-load.yaml
kubectl delete -f ./per-loan-load-01.yaml
kubectl delete -f ./.env/config-map.yaml

# Wait 30 seconds : 30 secs
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate .............................................................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ............................................................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ............................................................"
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ..........................................................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate .........................................................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ........................................................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ........................................................"
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ......................................................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ......................................................"
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ....................................................."
sleep 2
# Wait 30 seconds : 1 min
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ...................................................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ..................................................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate .................................................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ................................................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ................................................"
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ..............................................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate .............................................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ............................................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ............................................"
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ..........................................."
sleep 2
# Wait 30 seconds : 1.5 mins
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate .........................................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ........................................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ........................................"
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ......................................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ......................................"
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ....................................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ...................................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ..................................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate .................................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ................................."
sleep 2
# Wait 30 seconds : 2 mins
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ................................"
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ..............................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate .............................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ............................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ............................"
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ..........................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate .........................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ........................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ........................"
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ......................."
sleep 2
# Wait 30 seconds : 2.5 mins
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ......................"
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ....................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ...................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ..................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate .................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ................."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ................"
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ..............."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate .............."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ............."
sleep 2
# Wait 30 seconds : 3 mins
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ............"
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ..........."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate .........."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ........."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ........"
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ......."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ......"
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ....."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ...."
sleep 2
echo "CloudWorkshop|INFO|     - Waiting for Application Pods to Terminate ..."
sleep 2
echo ""
echo "##############################################################################################################################################################"
echo " Finished Undeployment of Application plus Configuration from EKS"
echo "##############################################################################################################################################################"
echo ""


echo ""
echo "##############################################################################################################################################################"
echo " Start Deploying Application and Configuration to EKS"
echo "##############################################################################################################################################################"
echo ""

kubectl create -f ./config-map.yaml
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
echo " Finished Deploying Application and Configuration to EKS"
echo "##############################################################################################################################################################"
echo ""
