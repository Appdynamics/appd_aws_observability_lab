#!/bin/bash

# check to see if user_id file exists and if so read in the user_id
if [ -f "/opt/appdynamics/workshopuser/setupprogress/appd_workshop_user.txt" ]; then

  appd_workshop_user=$(cat /opt/appdynamics/workshopuser/setupprogress/appd_workshop_user.txt)

else
  
  # validate mandatory environment variables.

  if [ -z "$appd_workshop_user" ]; then
    echo "CloudWorkshop|ERROR| - 'appd_workshop_user' environment variable not set or is not at least five alpha characters in length."
    exit 1
  fi

  LEN=$(echo ${#appd_workshop_user})

  if [ $LEN -lt 5 ]; then
    echo "CloudWorkshop|ERROR| - 'appd_workshop_user' environment variable not set or is not at least five alpha characters in length."
    exit 1
  fi

  # write the user_id to a file
  echo "$appd_workshop_user" > /opt/appdynamics/workshopuser/setupprogress/appd_workshop_user.txt


fi	

# example of incrementing the number
# appd_workshop_step_completed=$(($appd_workshop_step_completed + 10))

echo "$appd_workshop_user"

# write the user_id to a file
appd_workshop_step_completed="120"

rm -f /opt/appdynamics/workshopuser/setupprogress/appd_workshop_step_completed.txt

echo "$appd_workshop_step_completed" > /opt/appdynamics/workshopuser/setupprogress/appd_workshop_step_completed.txt

appd_workshop_step_completed="110"

appd_workshop_step_completed=$(cat /opt/appdynamics/workshopuser/setupprogress/appd_workshop_step_completed.txt)

echo "$appd_workshop_step_completed"


if [ "$appd_workshop_step_completed" == "120" ]; then

  echo "Step completed = ${appd_workshop_step_completed}"

fi

