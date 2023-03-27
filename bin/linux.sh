#!/bin/bash

#checks the output of uname
UNAME=$(uname)
FILE="~/.vimrc"

if (($UNAME != "Linux")); then 
	echo "Error" >> linuxsetup.log
	exit
fi
#creates .TRASH in home dir if it is not there
mkdir -p ~/.TRASH

#changes .vimrc to .bup_vimrc 
if [[ -f "$HOME/.vimc" ]]; then
	mv ~/.vimrc ~/.bup_vimrc
	echo "Current .vimrc file changed to .bup_vimrc" > linuxsetup.log
fi
#overwrites contents 
cat etc/vimrc > ~/.vimrc

echo source ~/.dotfiles/etc/bashrc_custom >> ~/.bashrc
