#!/bin/zsh

rm -rfd ~/.local/stow/kitty.app;
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin dest=~/.local/stow/;
(cd ~/.local/stow && stow -R kitty.app)
exit;
