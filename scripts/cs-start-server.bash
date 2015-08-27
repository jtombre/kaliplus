#!/bin/bash
#
# File: start-cs-server.bash
#
# Description: Start the CobaltStrike server
#
################################################################################

# Get a list of IP addresses to start server on
IPaddr=( $(ifconfig eth0 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}'  ) )
i=0
declare -a IPaddr
CSPATH="/opt/cobaltstrike"

# Test that CS directory exists
if [[ ! -d ${CSPATH} ]]; then
   echo "[-] CobaltStrike directory does not exist: $CSPATH"
   echo "[-] Verify the path or intall and update variable CSPATH"
   echo "[-] Exiting..."
   exit 1
fi

# Gather IP addresses for server to listen on
echo "*** IP Select Menu ***"
for IP in $IPaddr; do
   echo "   $i) $IP"
   ((i=i+1))
done

echo -n "Select the IP to listen on [0]: "
read serverIP

echo "Value select is: ${IPaddr[$serverIP]}"
cd $CSPATH 

echo -n "Enter password for CobaltStrike Server [password]: "
read CSPASS

# Start CobaltStrike server
if [[ x${CSPASS} == "x" ]]; then
   echo "./teamserver ${IPaddr[$serverIP]} password"
   ./teamserver ${IPaddr[$serverIP]} password
else
   echo "./teamserver ${IPaddr[$serverIP]} ${CSPASS}"
   ./teamserver ${IPaddr[$serverIP]} ${CSPASS}
fi

