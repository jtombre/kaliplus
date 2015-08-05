#!/bin/bash
# Start Kali headless on port 3389
VBoxHeadless -s Kali-Linux-1.1.0a-vbox-amd64 -e "TCP/Ports=3389" &
