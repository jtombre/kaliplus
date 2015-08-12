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
echo "Update Distro..."
KALICMD="kali-update.bash"
if [[ ! -e "$KALICMD" ]];then
   echo "$KALICMD Does Not Exist"
else
   ./$KALICMD
fi

# Download The Hacker Playbook script, good tricks there
echo "Download thpsetup.py from oaass..."
if wget -N https://gist.githubusercontent.com/oaass/bf136f3ea20d56ed0f83/raw/b3356c1704b60dc8e68caf42502403339da8eb91/thpsetup.py; then
   echo "[+] thpsetup.py download successful"
else
   echo "[-] thpsetup.py download failed"
fi

# Add some additional functionality
echo "Add additional packages..."

for package in unrar unace rar unrar p7zip zip unzip p7zip-full p7zip-rar file-roller zerofree; do
   if apt-get install ${package} -y -qq; then
      echo "[+] apt-get install ${package} successful"
   else
      echo "[-] apt-get install ${package} failed"
   fi
done

exit
# Add a nonroot user
echo "4 - Add a kaliuser..."
useradd -m kaliuser
