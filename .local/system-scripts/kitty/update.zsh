#!/bin/zsh
#

curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin dest=$HOME/.local/stow

cd $HOME/.local/stow/kitty.app/
stow kitty.app

echo "Restart Kitty"
