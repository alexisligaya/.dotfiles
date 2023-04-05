#!/bin/bash
#removes .vimrc
rm -f ~/.vimrc

#removes last line in bashrc_custom
# sed -i 's/pattern/replace/g' ~/.bashrc
# sed -i 's///g' ~/.bashrc
sed -i 's/source \~\/\.dotfiles\/etc\/bashrc_custom//g' ~/.bashrc

#removes .TRASH directory
rm -rf ~/.TRASH
