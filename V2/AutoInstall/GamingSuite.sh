#!/bin/bash

#Acquire all the repositories before updating them!
#minecraft repository
add-apt-repository -y ppa:minecraft-installer-peeps/minecraft-installer

#red eclipse game repository
add-apt-repository -y ppa:itachi-sama-amaterasu/redeclipse-client

#An official repository is already available from 14.10 onwards
#so we have to include it for 14.04

if[$1="14.04"]
then
	add-apt-repository -y ppa:openjdk-r/ppa
fi

apt-get update
apt-get install -y openjdk-8-jdk

#Whilst 14.10 has an official repository, by default it installs with JDK 7
#So it still has to be selected
if[$1="14.04" || $1="14.10"]
	then

	#A wildcard *?! What is this trickery?
	#We rely on directory auto-complete to find out what the full directory is
	#As the mid is the bit type of the computer
	#We could set up a very complicated function to work it out and pass it to us
	#Or we could just put a '*' and let it autocomplete the missing gap
	update-alternatives --set java /usr/lib/jvm/java-8-openjdk-*/jre/bin/java
	update-alternatives --set javac /usr/lib/jvm/java-8-openjdk-*/bin/javac
	#update-alternatives --config java
	#update-alternatives --config javac
fi

apt-get install -y minecraft-installer

#installing steam
apt-get install -y steam

#emulators

#SNES
apt-get install -y zsnes
#PlayStation
apt-get install -y pcsxr
#NES
apt-get install -y nestopia
#Sega Genesis/MegaDrive emulator
apt-get install -y dgen
#Gameboy advance
apt-get install -y visualboyadvance
#DS
apt-get install -y desmume

#Installing redeclipse
apt-get install -y redeclipse

#0ad, an RTS game
apt-get install -y 0ad

#Worms-like game
apt-get install -y hedgewars

#OpenSource version of the Quake3 game
apt-get install -y openarena

#FPS game
apt-get install -y saurebraten

exit 0