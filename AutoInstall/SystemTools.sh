#!/bin/bash
#Used to diagnose harddrive (see if it's old, failing etc)
apt-get install -y smartmontools

#Used for formatting harddrives, modifying partitions etc
apt-get install -y gparted

#Used to manage external/multiple monitors
apt-get install -y arandr

#In-case sed isn't already installed, so we can use it
apt-get install -y sed

#Reimplements the 'task manager' of Lubuntu on Ctrl + Alt + Delete
#Rather than the destructive 'force log out'
bash ./CADTaskConfig.sh