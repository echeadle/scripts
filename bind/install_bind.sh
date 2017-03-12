#!/bin/bash
# for the server Clients and server should have bind-utils
sudo yum install bind bind-utils
sudo vim /etc/named.conf

sudo chmod 755 /etc/named
sudo mkdir /etc/named/zones
sudo chmod 755 /etc/named
sudo mkdir /etc/named/zones

sudo named-checkconf
sudo named-checkzone nyc3.example.com /etc/named/zones/db.nyc3.example.com
sudo named-checkzone 128.10.in-addr.arpa /etc/named/zones/db.10.128
sudo systemctl enable named
sudo systemctl start named

#use /usr/sbin/dnssec-keygen to generate  TSIG keys
