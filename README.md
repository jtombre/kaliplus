# KALI Plus
These files were created to help update the kali VM distro. These updates allow for a simple way to update the distro, add functionality similar to "The Hacker Playbook" and allow for installation of tools, documents and examples for an isolated environment. If you don't have google, this makes it a little bit easier. 

# INSTALLATION
## Download and startup Kali
Download and install kali from Linux Image, VirtualBox or VMWare. Kali+ should be agnostic, but is tested on a VirtualBox instance. 
- Linux Distros: https://www.kali.org/downloads/
- VM Distros: https://www.offensive-security.com/kali-linux-vmware-arm-image-download/

Your Kali instance will need to be internet connected to download kaliplus. 

# INSTALLATION
## Install Kaliplus
1. Run and login to kali as root
2. Launch a Terminal from within kali
3. Change directory to root's Desktop
   ```cd ~/Desktop```
4. Download the latest kaliplus
   ```git clone https://github.com/jtombre/kaliplus.git```

## Kali Firstrun Setup 
1. Change directory to kaliplus/scripts
```cd ~/Desktop/kaliplus/scripts```
2. Run kali-firstrun-setup.bash
   **The execution of kali-firstrun-setup.bash will take a LONG time. Be prepared to go get a cup of coffee and read a nice book.**
```
./kali/scripts/kali-firstrun-setup.bash 
Update Distro...
./kali-update.bash
Download thpsetup.py from oaass...
[+] thpsetup.py download successful
Add additional packages...
[+] apt-get install unrar successful
[+] apt-get install unace successful
[+] apt-get install rar successful
[+] apt-get install unrar successful
[+] apt-get install p7zip successful
[+] apt-get install zip successful
[+] apt-get install unzip successful
[+] apt-get install p7zip-full successful
[+] apt-get install p7zip-rar successful
[+] apt-get install file-roller successful
[+] apt-get install zerofree successful
#
```

# Update kali distro
1. Change directory to kaliplus/scripts
```cd ~/Desktop/kaliplus/scripts```
2. Run kali-update.bash
```
root@kali:~/Desktop/kaliplus/scripts# ./kali-update.bash 
Updating kali, this will take a while so go have a cup of coffee!...
apt-get clean...
[+] apt-get clean successful
apt-get update...
Hit http://repo.kali.org kali Release.gpg
Hit http://repo.kali.org kali-bleeding-edge Release.gpg
...
Reading package lists...
[+] apt-get update successful
apt-get dist-upgrade...
Reading package lists...
Building dependency tree...
Reading state information...
0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.
[+] apt-get dist-upgrade successful
#
```
