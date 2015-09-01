#!/bin/bash
#
# File: start-cs-server.bash
#
# Description: Start the CobaltStrike server
#
################################################################################

# Get a list of IP addresses to start server on
CSTARPATH="/opt"

# Start the postgresql database
if service postgresql start; then
   echo "[+] service postgresql start"
else
   echo "[-] service postgresql start"
fi

# (Optional) Make postgresql database start on boot
if update-rc.d postgresql enable; then
   echo "[+] update-rc.d postgresql enable"
else 
   echo "[-] update-rc.d postgresql enable"
fi

# Start and stop the Metasploit service (this will setup your database.yml file for you)
if service metasploit start; then
   echo "[+] service metasploit start"
else 
   echo "[-] service metasploit start"
fi 

sleep 2
if service metasploit stop; then
   echo "[+] service metasploit stop"
else 
   echo "[-] service metasploit stop"
fi 

# Extract cobaltstrike-trial.tgz
cd $CSTARPATH
if tar -zxvf cobaltstrike-trial.tgz; then
   echo "[+] tar -zxvf cobaltstrike-trial.tgz"
else
   echo "[-] tar -zxvf cobaltstrike-trial.tgz"
fi

# Tell Kali Linux to use Java 1.7 by default
#  32-bit Kali Linux:
#  update-java-alternatives --jre -s java-1.7.0-openjdk-i386
#  64-bit Kali Linx:
if update-java-alternatives --jre -s java-1.7.0-openjdk-amd64; then
   echo "[+] update-java-alternatives --jre -s java-1.7.0-openjdk-amd64"
else
   echo "[-] update-java-alternatives --jre -s java-1.7.0-openjdk-amd64"
fi

echo "[+] CS setup complete, check for errors"
