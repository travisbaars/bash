#!/bin/bash

### Input Options
Up()
{
	# Expressvpn Up
	expressvpn connect
}
Down()
{
	# Expressvpn Down
	expressvpn disconnect
}
Help()
{
	# Display Help
	echo "Syntax: vpn [up | down | help]"
	echo "options:"
	echo "-u	Brings up default ExpressVPN connection."
	echo "-d	Brings down ExpressVPN connection."
	echo "-h	Opens Help menu."
	echo
}


### Get the options
while getopts ":udh" option; do
	case $option in
		u) # vpn up
			expressvpn connect
			exit;;
		d) # vpn down
			expressvpn disconnect
			exit;;
		h) # display Help
			Help
			exit;;
		\?) # Invalid option
			echo "Error: Invalid option"
			exit;;
	esac
done

if [[ $1 == "up" ]]
then
	Up
fi

if [[ $1 == "down" ]]
then
	Down
fi

if [[ $1 == "help " ]]
then
	Help
fi