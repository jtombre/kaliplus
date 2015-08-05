#!/bin/bash
#
# File: kali-update.bash
#
# Description:
# Update the Kali distro. 
#
# Make sure only root can run our script
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi
# Update the kali distro
echo "Updating kali..."
apt-get clean && apt-get update && apt-get upgrade -y && apt-get dist-upgrade -y
