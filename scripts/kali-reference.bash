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
echo -n "Do you want to download Cobalt Strike training videos? [Yn]: "
read video 

cd ~/Desktop/kaliplus/docs/video
if [[ $video == "y" || $video == "Y" ]]; then
  for FILE in `cat cs-training.txt`; do
     ./youtube_get.pl $FILE
  done
fi
