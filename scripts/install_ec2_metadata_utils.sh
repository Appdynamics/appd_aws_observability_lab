#!/bin/bash

#set +x  # temporarily turn command display OFF.
echo "####################################################################################################"
echo " Start Installing EC2 Meta-Data Utilities"
echo "####################################################################################################"
echo ""

sudo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/APO-SRE/fso-lab-devops/main/provisioners/scripts/common/install_aws_ec2_instance_metadata_query_tool.sh)"

echo ""
echo "####################################################################################################"
echo " Finished Installing EC2 Meta-Data Utilities"
echo "####################################################################################################"
echo ""
