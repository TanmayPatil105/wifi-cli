#!/bin/sh

EXE="/bin/wifi"

function install(){
    if [ -f "$EXE" ]
    then
        sudo rm /bin/wifi
        echo -e "\nRemoving $EXE.."
    fi
    echo "Creating $EXE..."
    sudo mv ./wifi /bin/
    echo "Installed Succesfully"

}

function fail_clean(){
    if [ -f "./wifi" ]
    then
        echo "Removing orphan wifi..." 
        rm ./wifi
    fi

    if [ -f "./configure" ]
    then
        echo "Removing orphan configure..." 
        rm ./configure
    fi
    echo "Couldn't Install wifi!!"
    exit 1
}

function success_clean(){
    echo "Cleaning orphan files!"
    if [ -f "./wifi" ]
    then
        rm ./wifi
    fi

    if [ -f "./configure" ]
    then
        rm ./configure
    fi
}

function check_dependency(){
    echo -e "\nChecking for dependencies..."
    ./configure 
    code=$?
    if [ "$code" == 1 ]
    then
        fail_clean
        exit 1
    fi
}

function download(){
    echo "Downloading Binaries..."

    curl https://raw.githubusercontent.com/TanmayPatil105/wifi-cli/main/configure -o configure > /dev/null 2>&1 || exit 1; 
    echo "Downloaded configure!"

    curl https://raw.githubusercontent.com/TanmayPatil105/wifi-cli/main/src/wifi -o wifi > /dev/null 2>&1  || exit 1;
    echo "Downloaded wifi!"

    sudo chmod +x configure wifi
}

download

check_dependency 

if [ "$?" == 1 ]
then
    exit 1
fi

install

success_clean
