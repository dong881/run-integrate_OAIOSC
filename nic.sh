#!/bin/bash
sudo ifconfig eno8303:ODU  "192.168.130.81"
sudo ifconfig eno8303:CU_STUB "192.168.130.82"
sudo ifconfig eno8303:RIC_STUB "192.168.130.80"
sudo ifconfig eno8303:OAI_CU "192.168.130.83"

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/home/gnb/
export PATH
echo  "O-RAN NIC Setting Complete!"