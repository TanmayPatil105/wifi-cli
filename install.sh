#!/bin/bash

DIR="/usr/share/wifi"
EXE="/bin/wifi"

if [ $# == 0 ]
then
	chmod +x ./src/wifi
	if [ -f "$EXE" ]
	then
		sudo rm /bin/wifi
		echo "Removing $EXE.."
	fi

	if [ -d "$DIR" ]
	then
		sudo rm -rf "$DIR"
		echo "Removing $DIR.."
	fi	

	echo "Creating $EXE..."
	sudo cp ./src/wifi /bin/

	echo "Creating $DIR..."
	sudo mkdir -p "$DIR"

	sudo cp ./src/help.txt "$DIR"/
	echo "Installed Succesfully"
fi

if [ $# == 1 ]
then
	if [ $1 == "remove" ]
	then 

		timeout 5s echo "Uninstalling wifi.."

		echo "Removing $EXE"
		sudo rm /bin/wifi 

		echo "Removing $DIR/help.txt..."
		sudo rm /usr/share/wifi/help.txt

		echo "Removed $DIR.."
		sudo rmdir /usr/share/wifi/

		echo "Uninstalled Succesfully"
	fi
fi
