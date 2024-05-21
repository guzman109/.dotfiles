#!/bin/bash

# Alias gitui to use same theme as terminal
cp .dotfiles/.config/gitui/latte.ron .dotfiles/.config/gitui/theme.ron

# Change Plasma Color to Dark
plasma-apply-colorscheme LavandaDark &>/dev/null
plasma-apply-desktoptheme Lavanda-Dark &>/dev/null

# Change Kitty Theme to Dark
$HOME/.local/bin/kitten themes --reload-in=all Biscuit-Dark

# Change THEME_COLOR Environment Variable
sed -i -e 's/THEME_COLOR=0/THEME_COLOR=1/g' $HOME/.config/plasma-workspace/env/theme-color.sh
