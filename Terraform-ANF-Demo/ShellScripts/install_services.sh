#!/bin/sh
apt-get update                # Get the latest package updates
apt-get install nfs-common -y # Install NFS service
apt-get install samba -y      # Install Samba service
apt-get install realmd -y     # Used to manage enrollment in kerberos realms, like Active Directory domains
apt-get install realmd packagekit # Used to manage enrollment in kerberos realms, like Active Directory domains
apt-get install sssd-tools -y # Used to manage enrollment in kerberos realms, like Active Directory domains
apt-get install sssd -y       # Used to manage enrollment in kerberos realms, like Active Directory domains
apt-get install libnss-sss -y # Used to manage enrollment in kerberos realms, like Active Directory domains
apt-get install libpam-sss -y # Used to manage enrollment in kerberos realms, like Active Directory domains
apt-get install adcli -y      # Used to manage enrollment in kerberos realms, like Active Directory domains
echo $(hostname -I | cut -d\  -f1) $(hostname) | sudo tee -a /etc/hosts