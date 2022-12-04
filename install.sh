#!/bin/bash

EXE="/bin/wifi"

if [ $# == 0 ]
then
	if [ -f "$EXE" ]
	then
		sudo rm /bin/wifi
		echo "Removing $EXE.."
	fi

	echo "Creating $EXE..."
	sudo cp ./src/wifi /bin/

	echo "Installed Succesfully"
fi

if [ $# == 1 ]
then
	if [ $1 == "remove" ]
	then 

		timeout 5s echo "Uninstalling wifi.."

		if [ -f "$EXE" ]
		then
			echo "Removing $EXE.."
			sudo rm /bin/wifi
		fi

		echo "Uninstalled Succesfully!"
	fi
fi
