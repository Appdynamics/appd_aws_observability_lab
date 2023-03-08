#!/bin/bash

echo ""
echo ""
echo ""
echo ""

echo "         #############################################################################################################################################################################################################"
echo "                                                                                                                                                                                                                      "
echo "                                                                                                                                                                                                                      "
echo "            %%%%%%%          %%%%%%%%%%%%%%%     %%%%%%%%%%%%%%%     %%%%%%%%%%%%%%%     %%%         %%%    %%%%%      %%%          %%%%%%%          %%%           %%%    %%%        %%%%%%%%%%%        %%%%%%%%%%%   "
echo "           %%%   %%%         %%%          %%%    %%%          %%%    %%%          %%%     %%%       %%%     %%% %%     %%%         %%%   %%%         %%%%         %%%%    %%%      %%%                 %%%            "
echo "          %%%     %%%        %%%           %%%   %%%           %%%   %%%           %%%     %%%     %%%      %%%  %%    %%%        %%%     %%%        %% %%       %% %%    %%%     %%%                   %%%           "
echo "         %%%       %%%       %%%          %%%    %%%          %%%    %%%            %%%     %%%   %%%       %%%   %%   %%%       %%%       %%%       %%% %%     %% %%%    %%%    %%%                      %%%         "
echo "        %%%%%%%%%%%%%%%      %%%%%%%%%%%%%%%     %%%%%%%%%%%%%%%     %%%            %%%       %%%%%         %%%    %%  %%%      %%%%%%%%%%%%%%%      %%%   %%  %%  %%%    %%%    %%%                        %%%       "
echo "       %%%           %%%     %%%                 %%%                 %%%           %%%         %%%          %%%     %% %%%     %%%           %%%     %%%    %%%%   %%%    %%%     %%%                        %%%      "
echo "      %%%             %%%    %%%                 %%%                 %%%          %%%          %%%          %%%      %%%%%    %%%             %%%    %%%           %%%    %%%      %%%                       %%%      "
echo "     %%%               %%%   %%%                 %%%                 %%%%%%%%%%%%%%%           %%%          %%%       %%%%   %%%               %%%   %%%           %%%    %%%        %%%%%%%%%%%   %%%%%%%%%%%%       "
echo "                                                                                                                                                                                                                      "
echo "                                                                                                                                                                                                                      "
echo "  ############################################################################################################################################################################################################        "

echo ""
echo ""
echo ""
echo ""

echo "###################################################################################      STARTING APPDYNAMICS CLOUD WORKSHOP TEARDOWN      ###########################################################################"

echo ""
echo ""
echo ""
echo ""

echo "##########################################################################  !!! DO NOT DELETE YOUR CLOUD9 INSTANCE BEFORE THIS SCRIPT FINISHES !!!  ##################################################################"

echo ""
echo ""
echo ""
echo ""

appd_controller_details_file_path="${appd_controller_details_file_path:-}"
appd_controller_details_file_valid="${appd_controller_details_file_valid:-false}"


if [ -f "./scripts/state/controller-config-file-valid.txt" ]; then
   appd_controller_details_file_valid=$(cat ./scripts/state/controller-config-file-valid.txt)
   appd_controller_details_file_path=$(cat ./scripts/state/controller-config-file-path.txt)
fi

if [ "$appd_controller_details_file_valid" == "true" ]; then
   java -DworkshopUtilsConf=./scripts/state/workshop-teardown.yaml -DworkshopAction=teardown -DcontrollerConf=${appd_controller_details_file_path} -DshowWorkshopBanner=false -jar ./AD-Workshop-Utils.jar
else	
   java -DworkshopUtilsConf=./scripts/state/workshop-teardown.yaml -DworkshopAction=teardown -DshowWorkshopBanner=false -jar ./AD-Workshop-Utils.jar

fi
echo ""
echo ""
echo ""

echo "###################################################################################      FINISHED APPDYNAMICS CLOUD WORKSHOP TEARDOWN      ###########################################################################"



