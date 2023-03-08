#!/bin/bash

#set +x  # temporarily turn command display OFF.
echo ""
echo ""
echo ""
echo "####################################################################################################"
echo " Start Resizing Local EBS Volume"
echo "####################################################################################################"
echo ""

SIZE=${1:-80}

#echo "CloudWorkshop|INFO|     - Updating something ..."

echo "#########################################"
echo " Resizing Volume To" $SIZE "GB"
echo "#########################################"
echo ""
echo ""
echo "####################################################################################################"
echo " Be prepared to wait up to 20 minutes or more for the volume resizing to complete."
echo " The 'aws ec2 modify-volume' service used is frequently unavailable so this script" 
echo " is set to retry 100 times to try and connect to the service."
echo ""
echo " Please be patient and take a bio-io and or grab your favorite snack or drink while waiting :)"
echo " You can safely stop this script during this phase if desired and rerun it at a later time as well."
echo "####################################################################################################"

STARTDATE=$(date)

echo ""
echo "####################################################################################################"
echo " Start Time for 'aws ec2 modify-volume' service"
echo " "$STARTDATE
echo "####################################################################################################"

SECONDS=0


echo ""

INSTANCEID=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)
REGION=$(curl -s http://169.254.169.254/latest/meta-data/placement/availability-zone | sed 's/\(.*\)[a-z]/\1/')

#echo "INSTANCEID =" $INSTANCEID
#echo "REGION =" $REGION

VOLUMEID=$(aws ec2 describe-instances \
  --instance-id $INSTANCEID \
  --query "Reservations[0].Instances[0].BlockDeviceMappings[0].Ebs.VolumeId" \
  --output text \
  --region $REGION)


#echo "VOLUMEID =" $VOLUMEID

aws ec2 modify-volume --region $REGION --volume-id $VOLUMEID --size $SIZE

while [ \
  "$(aws ec2 describe-volumes-modifications \
    --volume-id $VOLUMEID \
    --region $REGION \
    --filters Name=modification-state,Values="optimizing","completed" \
    --query "length(VolumesModifications)"\
    --output text)" != "1" ]; do
sleep 1
done

if [[ -e "/dev/xvda" && $(readlink -f /dev/xvda) = "/dev/xvda" ]]
then
  sudo growpart /dev/xvda 1

  STR=$(cat /etc/os-release)
  SUB="VERSION_ID=\"2\""
  if [[ "$STR" == *"$SUB"* ]]
  then
    sudo xfs_growfs -d /
  else
    sudo resize2fs /dev/xvda1
  fi

else
  sudo growpart /dev/nvme0n1 1

  STR=$(cat /etc/os-release)
  SUB="VERSION_ID=\"2\""
  if [[ "$STR" == *"$SUB"* ]]
  then
    sudo xfs_growfs -d /
  else
    sudo resize2fs /dev/nvme0n1p1
  fi
fi


duration=$SECONDS

ENDDATE=$(date)

echo ""
echo "####################################################################################################"
echo " End Time for 'aws ec2 modify-volume' service"
echo " "$ENDDATE
echo ""
echo " $(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed for 'aws ec2 modify-volume' service."
echo "####################################################################################################"


echo ""
df -H
echo ""
echo "####################################################################################################"
echo " Finished Resizing Local EBS Volume"
echo "####################################################################################################"
echo ""
