#!/bin/bash

systemd_dir="/etc/systemd/system"
service_name="appdbagent.service"
service_filepath="${systemd_dir}/${service_name}"
service_user="ec2-user"
service_group="ec2-user"
service_scripts_home="/opt/appdynamics/dbagent/.svc"

# create systemd service file.
if [ -d "$systemd_dir" ]; then
  rm -f "${service_filepath}"

  touch "${service_filepath}"
  chmod 644 "${service_filepath}"

  echo "[Unit]" >> "${service_filepath}"
  echo "After=network.target remote-fs.target nss-lookup.target" >> "${service_filepath}"
  echo "" >> "${service_filepath}"
  echo "[Service]" >> "${service_filepath}"
  echo "Type=simple" >> "${service_filepath}"
  echo "User=${service_user}" >> "${service_filepath}"
  echo "Group=${service_group}" >> "${service_filepath}"
  #echo "RemainAfterExit=true" >> "${service_filepath}"
  echo "ExecStart=${service_scripts_home}/start.sh" >> "${service_filepath}"
  echo "ExecStop=${service_scripts_home}/stop.sh" >> "${service_filepath}"
  echo "" >> "${service_filepath}"
  echo "[Install]" >> "${service_filepath}"
  echo "WantedBy=multi-user.target" >> "${service_filepath}"
fi

# reload systemd manager configuration.
systemctl daemon-reload

# enable the controller service to start at boot time.
systemctl enable "${service_name}"
systemctl is-enabled "${service_name}"
