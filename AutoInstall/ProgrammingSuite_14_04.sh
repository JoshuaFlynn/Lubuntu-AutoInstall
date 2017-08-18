#!/bin/bash
add-apt-repository -y ppa:openjdk-r/ppa
apt-get update

#Great IDE for C and C++ programming
apt-get install -y codeblocks

#Simple Fast Multimedia Library - which is entirely free. Used for C++
apt-get install -y sfml

#Install the supporting libraries used by SFML
bash ./SFMLConfig.sh

#IDE for Java
apt-get install -y eclipse

#Python IDE
apt-get install -y geany
#Stani's Python Editor, a reasonable alternative to geany
apt-get install -y spe

#Python netaddr library (used by the doublepulser-detection-script so it doubles as a security feature)
apt-get install -y python-netaddr

#Add Java 8 (14.04 and maybe earlier)
apt-get install -y openjdk-8-jdk

echo "Please choose JDK 8 to enable the most recent Java compiler"

update-alternatives --config java
update-alternatives --config javac
