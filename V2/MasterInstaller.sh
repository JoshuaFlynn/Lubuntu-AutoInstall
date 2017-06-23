#!/bin/bash

if [ "$1" != "" ]
then
	echo "Usage information:"
	echo "Program must be run as sudo to ensure it has permissions to install all packages and make necessary system modifications."
	echo "Security = Security of the machine.""
	echo "Functionality = How much more configurable the machine is."
	echo "Usability = How much more usable/helpful/useful the machine is to the user."
	echo ""
	echo "Package selectors must be supplied as a single argument. Available choices:"
	echo "S = Security					[Default: on] [Increases Security] [Increases Functionality] [No Effect On Usability]"
	echo "T = System Tools			[Default: on] [Increases Security] [Greatly Increases Functionality] [Increases Usability]"
	echo "W = Wifi					[Default: on] [No Effect On Security] [Increases Functionality] [Can Increase Usability]"
	echo "G = Gaming Suite			[Default: off] [Reduces Security] [No Effect On Functionality]  [Greatly Increases Usability]"
	echo "B = Browser				[Default: on] [Can Increase Security] [Can Increase Or Reduce Functionality] [Increases Usability]"
	echo "C = Creative Suite			[Default: off] [Can Reduce Security] [Can Increase Functionality] [Greatly Increases Usability]"
	echo "c = Communications Suite	[Default: off] [Reduces Security] [No Effect On Functionality] [Increases Usability]"
	echo "E = Entertainment Suite 	[Default: on] [Can Reduce Security] [No Effect On Functionality] [Greatly Increases Usability]"
	echo "P = Programming Suite 	[Default: off] [Can Reduce Security] [Increases Functionality] [Increases Usability]"
	echo "w = Windows Emulation	[Default: off] [Greatly Reduces Security] [Increases Functionality] [Can Increase Usability]"
	exit 0
fi

#We extract the distribution release
versvar=$(cat /etc/lsb-release | grep "_RELEASE")
versvar=${versvar:16:20}
echo "$versvar"

exit 0

#Navigate to the autoinstall folder
cd ./AutoInstall

if [ "$1" = "" ]
then
	bash ./Security.sh versvar
	bash ./SystemTools.sh versvar
	bash ./Wifi.sh versvar
	bash ./Browser.sh versvar
	bash ./EntertainmentSuite.sh versvar
else
	bash ./Security.sh versvar
	bash ./SystemTools.sh versvar
	bash ./Wifi.sh versvar
	bash ./Browser.sh versvar
	bash ./EntertainmentSuite.sh versvar
	bash ./CreativeSuite.sh versvar
	bash ./ProgrammingSuite.sh versvar
	bash ./GamingSuite.sh versvar
	bash ./WindowsEmulation.sh versvar
fi

exit 0