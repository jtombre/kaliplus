#!/bin/bash
#
# File: kali-zerofree
#
# Description: 
# This script will be used to shrink a master kali distro after customization has been completed
#
# 1) Verify zerofree exists, if not download
# yum install zerofree
# 2) Disk Free for reference
# df 
# 3) Mount disk readonly
# mount -n -o remount,ro -t ext3 /dev/sda1 /
# 4) Zero free space
# zerofree /dev/sda1
# 5) Shutdown
# shutdown -h now
# 6) Clone and shink
# VboxManage modifyvdi /path/to/your/kali.vdi compact
# VboxManage clonehd name-or-orig.vdi name-of-clone.vdi
