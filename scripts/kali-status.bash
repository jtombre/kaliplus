#!/bin/bash
#
# File: kali-status.bash
#
# Description:
#   Provide a visual of services that are running 
#   service postgresql start
#   service metasploit start
#   service ssh start
#
#    -l = only services which are listening on some port
#    -n = show port number, don't try to resolve the service name
#    -t = tcp ports
#    -u = udp ports
#    -p = name of the program
while true; do eval "clear;netstat -lntu"; sleep 5; done
