#!/bin/bash

#Install a lightweight browser
apt-get install -y midori

#Configure default firefox to be ridiculously secure
#Spawned as an independent process as firefox installation can occur
#Independently of package dependency upgrades
(terminal bash -e ./ConfigureFirefox.sh $1)&

#Insert Tor browser config script here
#(terminal bash -e bash ./ConfigureTor.sh $1)&

exit 0
