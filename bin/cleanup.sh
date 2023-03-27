#!/bin/bash
#removes .vimrc
rm ~/.vimrc

#removes last line in bashrc_custom
sed -i 's/source \~\/\.dotfiles\/bashrc_custom//g' ~/.bashrc

#removes .TRASH directory
rm -r ~/.TRASH
