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
	blueutil -p 1 -d 1
	open /Users/"$(whoami)"/Downloads
	echo " "
	echo "AirDrop Ready!"
	echo " "
elif [ "$flg" == 0 ]; then
	blueutil -p 0 -d 0
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
#
# https://github.com/gmagannaDevelop/airdrop
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
# LICENSE:
# MIT License
#
# Copyright (c) 2017 Gustavo Magaña
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
