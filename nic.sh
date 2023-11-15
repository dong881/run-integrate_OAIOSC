#!/bin/bash
echo "***** Assigning IP addresses *****"
INTERFACE=$(ip route | grep default | sed -e "s/^.*dev.//" -e "s/.proto.*//")
INTERFACE="$(echo -e "${INTERFACE}" | tr -d '[:space:]')"

# Clear state
sudo ifconfig $INTERFACE:RIC_STUB down
sudo ifconfig $INTERFACE:CU_STUB down
sudo ifconfig $INTERFACE:ODU down
sudo ifconfig $INTERFACE:OAI_CU down
sudo ifconfig lo:RIC_STUB down
sudo ifconfig lo:CU_STUB  down
sudo ifconfig lo:ODU  down
sudo ifconfig lo:OAI_CU down

sudo ifconfig $INTERFACE:RIC_STUB "192.168.130.80"
sudo ifconfig $INTERFACE:ODU  "192.168.130.81"
# sudo ifconfig $INTERFACE:CU_STUB "192.168.130.82"
sudo ifconfig $INTERFACE:OAI_CU "192.168.130.83"

sudo ifconfig lo:RIC_STUB "192.168.130.80"
sudo ifconfig lo:ODU  "192.168.130.81"
sudo ifconfig lo:OAI_CU "192.168.130.83"

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/home/gnb/
export PATH
echo  "O-RAN NIC Setting Complete!"