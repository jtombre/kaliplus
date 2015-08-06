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
#apt-get clean && apt-get update && apt-get upgrade -y && apt-get dist-upgrade -y

# Add some additional functionality
echo "apt-get clean..."
if apt-get clean -q; then
   echo "[+] apt-get clean successful"
else
   echo "[-] apt-get clean had failuers"
fi

# Add some additional functionality
echo "apt-get update..."
if apt-get update -qq; then
   echo "[+] apt-get update successful"
else
   echo "[-] apt-get update had failuers"
fi

# Add some additional functionality
echo "apt-get upgrade..."
if apt-get upgrade -y -qq ; then
   echo "[+] apt-get upgrade successful"
else
   echo "[-] apt-get upgrade had failuers"
fi

# Add some additional functionality
echo "apt-get -q dist-upgrade..."
if apt-get dist-upgrade -qq -y; then
   echo "[+] apt-get dist-upgrade successful"
else
   echo "[-] apt-get dist-upgrade had failuers"
fi
