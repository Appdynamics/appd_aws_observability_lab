#!/bin/bash

#set +x  # temporarily turn command display OFF.
echo "####################################################################################################"
echo " Start Installing Helm"
echo "####################################################################################################"
echo ""

sudo curl -L https://git.io/get_helm.sh | bash -s -- --version v3.8.2

#sudo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/APO-SRE/fso-lab-devops/main/provisioners/scripts/common/install_helm_cli.sh)"

echo ""
echo "####################################################################################################"
echo " Finished Installing Helm"
echo "####################################################################################################"
echo ""
