#!/bin/bash

# bind the IP addresses with "local"
sudo ifconfig lo:ODU 192.168.130.81 up
sudo ifconfig lo:CU_STUB 192.168.130.82 up