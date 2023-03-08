#!/bin/bash

#
# Script to deploy AppDynamics Agents to two different Kubernetes clusters using a Helm chart.
# This script uses the AD-Workshop-Utils.jar to perform the deployment with elevated permissions.
#
# The Helm chart is configured to deploy the following agent types:
#
# - Cluster Agent
# - Java Agent
# - ServerMonitoring Agent
# - NetViz Agent


appd_controller_details_file_path="${appd_controller_details_file_path:-}"
appd_controller_details_file_valid="${appd_controller_details_file_valid:-false}"


if [ -f "./scripts/state/controller-config-file-valid.txt" ]; then
   appd_controller_details_file_valid=$(cat ./scripts/state/controller-config-file-valid.txt)
   appd_controller_details_file_path=$(cat ./scripts/state/controller-config-file-path.txt)
fi


appd_wrkshp_last_setupstep_done="100"

if [ "$appd_controller_details_file_valid" == "true" ]; then

  java -DworkshopUtilsConf=./applications/post-modernization/clusteragent/agent-setup.yaml -DworkshopAction=elevatedinstall -DcontrollerConf=${appd_controller_details_file_path} -DlastSetupStepDone=${appd_wrkshp_last_setupstep_done} -DshowWorkshopBanner=false -jar ./AD-Workshop-Utils.jar
else 
  java -DworkshopUtilsConf=./applications/post-modernization/clusteragent/agent-setup.yaml -DworkshopAction=elevatedinstall -DlastSetupStepDone=${appd_wrkshp_last_setupstep_done} -DshowWorkshopBanner=false -jar ./AD-Workshop-Utils.jar

fi

mkdir ./applications/post-modernization/clusteragent/.env
cp ./applications/post-modernization/clusteragent/values-ca1.yaml ./applications/post-modernization/clusteragent/.env/values-ca1.yaml

rm -f ./applications/post-modernization/clusteragent/values-ca1.yaml
cp ./applications/post-modernization/clusteragent/values-ca2.yaml.template ./applications/post-modernization/clusteragent/values-ca1.yaml

sed -i 's|\@\[ADWRKSHP_ELV_LABUSER_KEY\]|adminuser|g' ./applications/post-modernization/clusteragent/values-ca1.yaml
sed -i 's|\@\[ADWRKSHP_ELV_LABUSER_PWD\]|adminuserpass|g' ./applications/post-modernization/clusteragent/values-ca1.yaml
sed -i 's|\@\[ADWRKSHP_ACCT_ACCESS_KEY\]|df4d049a-9f78-4e95-a8ad-9261a53a5954|g' ./applications/post-modernization/clusteragent/values-ca1.yaml
sed -i 's/channel_9d8f15cf-0acf-4510-bf5b-7147aae4035c/channel_7y3d81dc-8fca-3274-gj7d-4629ssw2076p/g' ./applications/post-modernization/clusteragent/values-ca1.yaml
rm -f ./applications/post-modernization/clusteragent/.env/values-ca1.yaml
