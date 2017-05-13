#! /bin/bash

flg=$1

if [ -z "$flg" ]; then
	echo " "
	echo "airdrop: prepare your mac to receive via AirDrop"
	echo " Usage:"
	echo " $ airdrop 1 ( turns on wifi and bluetooth, opens ~/Downloads in Finder )"
	echo " $ airdrop 0 ( turns off just bluetooth, because I'm guessing you're always online )"
	echo " "
elif [ "$flg" == 1 ]; then
	networksetup -setairportpower en1 on
	blueutil power 1
	open /Users/gmaganna/Downloads
	echo " "
	echo "AirDrop Ready!"
	echo " "
elif [ "$flg" == 0 ]; then
	blueutil power 0
	echo " "
	echo "AirDrop off (bluetooth off)"
	echo " "
else {
	echo " "
	echo "Error, invalid option"
	echo " "
}
fi
##################################
# PLEASE DO NOT REMOVE THIS NOTICE
# Script written by Gustavo Magaña
# License: MIT License
#
# * This script needs the utility 'blueutil' to be installed
#   a priori. It can be installed via homebrew:
#   $ brew install blueutil
# 
# * Depending on each machine, the folowing line: 
#	networksetup -setairportpower en1 on
#   should be modified, changing the 'en1' to 'en0'
#   or something like that. Run it separately to check it works.
#   $ networksetup -setairportpower en1 on
#
# * Move this file into /usr/local/bin/ to execute it.
#   Permissions and ownership might need changes (use chown and chmod).
#
#################################
