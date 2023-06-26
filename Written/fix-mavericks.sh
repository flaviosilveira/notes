#!/bin/bash

# Check if vagrant is installed
if ! which vagrant >/dev/null; then
	echo "Is Vagrant installed?"
	exit 1
fi

# Check if is using sudo
if [[ $UID != 0 ]]; then
	echo "Please run this script with sudo."
	exit 1
fi

# check the parameter // second is optional
if [ "$1" == "" ]; then
	echo "You need to enter the path! Your virtualbox version is optional."
	echo "Usage: ./fix-maverick.sh path_to_virtual_machine [if your virtualbox version is > then 4.3, send a tru as second parameter]"
	exit 1
fi

# check if is a valid directory
if [ ! -d "$1" ]; then
	echo "First parameter need to be a valid directory."
	exit 1
fi

# commands
cd $1

if [ "$2" == true ]; then
	sudo launchctl load /Library/LaunchDaemons/org.virtualbox.startup.plist
else
	sudo /Library/StartupItems/VirtualBox/VirtualBox restart
fi

vagrant up --provision

exit 0
