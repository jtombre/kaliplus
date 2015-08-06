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
echo "Updating kali, this will take a while so go have a cup of coffee!..."

# clean clears out the local repository of retrieved package files.
echo "apt-get clean..."
if apt-get clean -q; then
   echo "[+] apt-get clean successful"
else
   echo "[-] apt-get clean had failures"
fi

# update is used to resynchronize the package index files from their sources. 
echo "apt-get update..."
if apt-get update -q; then
   echo "[+] apt-get update successful"
else
   echo "[-] apt-get update had failures"
fi

# upgrade is used to install the newest versions of all packages currently installed on the system 
#echo "apt-get upgrade..."
#if apt-get upgrade -y -qq ; then
#   echo "[+] apt-get upgrade successful"
#else
#   echo "[-] apt-get upgrade had failures"
#fi

# dist-upgrade, in addition to performing the function of upgrade, also intelligently handles changing dependencies with new versions of packages
echo "apt-get dist-upgrade..."
if apt-get dist-upgrade -q -y; then
   echo "[+] apt-get dist-upgrade successful"
else
   echo "[-] apt-get dist-upgrade had failures"
fi
