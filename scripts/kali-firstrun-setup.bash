#!/bin/bash
#
# File: kali-firstrun-setup.bash
#
# Description:
# Initialization of kali for isolated network use
#
# Make sure only root can run our script
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

# For first run, update the distro to the latest
echo "1 - Update Distro..."
./kali-update.bash

# Download The Hacker Playbook script, good tricks there
echo "2 - Download thpsetup.py from oaass..."
wget https://gist.githubusercontent.com/oaass/bf136f3ea20d56ed0f83/raw/b3356c1704b60dc8e68caf42502403339da8eb91/thpsetup.py

# Add some additional functionality
echo "3 - Add archive managers..."
apt-get install unrar unace rar unrar p7zip zip unzip p7zip-full p7zip-rar file-roller zerofree -y

# Add a nonroot user
echo "4 - Add a kaliuser..."
useradd -m kaliuser
