#!/bin/bash

DIR="/usr/share/wifi"
EXE="/bin/wifi"

if [ $# == 0 ]
then
	chmod +x ./src/wifi
	if [ -f "$EXE" ]
	then
		sudo rm /bin/wifi
	fi
	sudo cp ./src/wifi /bin/
	if [ -d "$DIR" ]
	then
		sudo rm -rf "$DIR"
		sudo mkdir -p "$DIR"
		echo "Removing $DIR.."
		echo "Removing $EXE.."

	else
		sudo mkdir -p "$DIR"
	fi	
	if  [ -f "$DIR"/help.txt ]
	then
		sudo rm "$DIR"/help.txt
	fi
	sudo cp ./src/help.txt "$DIR"/
	echo "Installed Succesfully"
	exit 1
fi
if [ $1 == "remove" ]
then
	sudo rm /bin/wifi 
	sudo rm /usr/share/wifi/help.txt
	sudo rmdir /usr/share/wifi/
	echo "Uninstalled Succesfully"
	exit 1
fi
