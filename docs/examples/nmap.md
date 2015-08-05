# NMAP Examples
Tools are great, manuals not so much, so here are a few examples of how to use the tool. 
Credit: http://www.cyberciti.biz/networking/nmap-command-examples-tutorials/

## Networks
Domain: some.domain.com
Domain Subnet: some.domain.com/24
IP: 1.2.3.4
IP Subnet: 1.2.3.4/26

## Scaning
nmap <Networks>
nmap 10.0.0.1
nmap some.domain.com

### Scanning multiple IPs
nmap <Network> [<Network>]
nmap 192.168.1.1 192.168.1.2
nmap 192.168.2.1,2,3
namp 192.168.3.10-20
nmap 192.168.4.*
nmap 192.168.5.0/24

### Read hosts from a file
nmap -iL <file>
nmap -iL /tmp/ip.txt

### Exclude hosts 
nmap <Networks> --exclude <Hosts,Hosts>
nmap 192.168.6.0/24 --exclude 192.168.6.1,192.168.6.254
nmap -iL <file> --excludefile <exclude file>

### OS version
nmap -A <Networks>
nmap -v -A <Networks>
nmap -A -iL <file>

### Find out if a host is protected by a firewall
namp -PN <Networks>

### Which hosts are up and running
nmap -sP <Networks>

### Fast scan
nmap -F <Networks>
