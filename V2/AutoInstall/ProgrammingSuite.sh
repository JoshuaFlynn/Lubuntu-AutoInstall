#!/bin/bash

#We have to acquire an external Java JDK if this is an earlier OS version
if[$1="14.04"]
then
	add-apt-repository -y ppa:openjdk-r/ppa
fi

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

#Add Java 8 (14.04 and maybe earlier)
apt-get install -y openjdk-8-jdk

#Newer versions should already be on 8
if[$1="14.04" || $1="14.10"]
then

	#A wildcard *?! What is this trickery?
	#We rely on directory auto-complete to find out what the full directory is
	#As the mid is the bit type of the computer
	#We could set up a very complicated function to work it out and pass it to us
	#Or we could just put a '*' and let it autocomplete the missing gap
	update-alternatives --set java /usr/lib/jvm/java-8-openjdk-*/jre/bin/java
	update-alternatives --set javac /usr/lib/jvm/java-8-openjdk-*/bin/javac
fi

exit 0