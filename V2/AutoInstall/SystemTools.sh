#!/bin/bash
#Used to diagnose harddrive (see if it's old, failing etc)
apt-get install -y smartmontools

#Used to test our own security, trace network issues etc
apt-get install -y nmap

#Used for formatting harddrives, modifying partitions etc
apt-get install -y gparted

#Used to manage external/multiple monitors
apt-get install -y arandr

#Very useful for 7zip files
apt-get install -y p7zip-full

#In-case sed isn't already installed, so we can use it
apt-get install -y sed

#Reimplements the 'task manager' of Lubuntu on Ctrl + Alt + Delete
#Rather than the destructive 'force log out'
bash ./CADTaskConfig.sh

exit 0