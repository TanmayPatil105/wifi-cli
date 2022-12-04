#!/bin/bash

EXE="/bin/wifi"

curl https://raw.githubusercontent.com/TanmayPatil105/wifi-cli/main/src/wifi -o wifi

#new line
echo -e "\nInstalling"

if [ -f "$EXE" ]
then
    sudo rm /bin/wifi
    echo "Removing $EXE.."
fi
echo "Creating $EXE..."
sudo mv ./wifi /bin/
echo "Installed Succesfully"