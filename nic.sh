#!/bin/bash
echo "***** Assigning IP addresses *****"
INTERFACE=$(ip route | grep default | sed -e "s/^.*dev.//" -e "s/.proto.*//")
INTERFACE="$(echo -e "${INTERFACE}" | tr -d '[:space:]')"

sudo ifconfig $INTERFACE:ODU  "192.168.130.81"
sudo ifconfig $INTERFACE:CU_STUB "192.168.130.82"
sudo ifconfig $INTERFACE:RIC_STUB "192.168.130.80"
sudo ifconfig $INTERFACE:OAI_CU "192.168.130.83"

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/home/gnb/
export PATH
echo  "O-RAN NIC Setting Complete!"