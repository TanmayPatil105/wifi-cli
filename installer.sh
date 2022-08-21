#!/bin/bash

if [ $# == 0 ]
then
	chmod +x ./src/wifi
	sudo cp ./src/wifi /bin/
	if [ -d "/usr/share/wifi/" ]
	then
		echo "Wifi already exists"
	else
		sudo mkdir /usr/share/wifi
	fi	
	sudo cp ./src/help.txt /usr/share/wifi/
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
