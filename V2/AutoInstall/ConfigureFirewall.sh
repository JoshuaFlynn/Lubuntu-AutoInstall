#!/bin/bash
#Firewall module

#Start up the firewall
ufw enable

#Copy in our GUFW config file
cp ./UFW_Profiles/gufw.cfg /etc/gufw

#Create a series of sci-fi based status profiles

#Green alert has zero protections on (allow all in and out)
cp ./UFW_Profiles/GreenAlert.profile /etc/gufw

#Yellow alert introduces basic protections (deny in, allow out, deny Samba)
cp ./UFW_Profiles/YellowAlert.profile /etc/gufw

#Orange alert blocks all, bar those with specific allowance (deny in, deny out, allow HTTP, HTTPS, Tor)
cp ./UFW_Profiles/OrangeAlert.profile /etc/gufw

#Red alert blocks all, no exceptions
cp ./UFW_Profiles/RedAlert.profile /etc/gufw

#Delete default profiles
#Public
rm /etc/gufw/Public.profile
#Office
rm /etc/gufw/Office.profile
#Home
rm /etc/gufw/Home.profile

ufw reload

exit 0