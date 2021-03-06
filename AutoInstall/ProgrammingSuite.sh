#!/bin/bash
apt-get update

#Great IDE for C and C++ programming
apt-get install -y codeblocks

#SFML - Simple Fast Multimedia Library which is entirely free (used for C++)
apt-get install -y sfml

#Install the supporting libraries used by SFML
bash ./SFMLConfig.sh

#IDE for Java
apt-get install -y eclipse

#Up to date java (only works for 15.x and later OSes)
apt-get install -y openjdk-8-jdk

#Python IDE
apt-get install -y geany
#Stani's Python Editor, a reasonable alternative to geany
apt-get install -y spe

#Python netaddr library (used by the doublepulser-detection-script so it doubles as a security feature)
apt-get install -y python-netaddr
