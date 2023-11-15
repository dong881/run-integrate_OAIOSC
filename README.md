# Project README

## Overview

This repository contains a set of scripts for various tasks related to network functions. The scripts are designed to facilitate specific actions and operations, providing a convenient way to execute common tasks. The development of these scripts is primarily led by Ming and his team member Richard.

## Script Descriptions

### 0 - Capture Wireshark Packets
- Script: `0`
- Description: Captures Wireshark packets and saves them in the .pacp format.

### 1 - Execute NCU CU
- Script: `1`
- Description: Quickly executes the CU provided by NCU.

### 11 - Execute BMW Lab CU
- Script: `11`
- Description: Quickly executes the CU from BMW Lab.

### 2 - Execute RIC Stub
- Script: `2`
- Description: Quickly executes the RIC stub.

### 3 - Execute NCU OSC DU
- Script: `3`
- Description: Quickly executes the OSC DU provided by NCU.

### 4 - Execute NCU OAI PNF
- Script: `4`
- Description: Quickly executes the OAI PNF provided by NCU.

### nic.sh - Network Interface Configuration
- Script: `nic.sh`
- Description: Configures network interfaces, including deleting old configurations and setting up new configurations, including the 'lo' interface.

## Development Team

- **Lead Developer:** Ming
- **Team Member:** Richard

## Usage:

1. Clone the repository to your local machine.
   ```bash
   git clone https://github.com/your-repo.git
   ```

2. Navigate to the scripts directory.
   ```bash
   cd your-repo/scripts
   ```

3. Execute the desired script by running the corresponding command.
   ```bash
   ./0.sh
   ```

Feel free to reach out to the development team if you have any questions or issues related to these scripts.

# run-integrate_OAIOSC
If you reboot the computer, please assign virtual IP addresses for O-DU, O-CU, and RIC stub.
Note:"eno8303" is DELL server interface name you can use ifconfig to get interface name.
