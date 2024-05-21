#!/bin/bash

# Alias gitui to use same theme as terminal
cp .dotfiles/.config/gitui/latte.ron .dotfiles/.config/gitui/theme.ron

# Change Plasma Color and Cursor to Light
plasma-apply-colorscheme LavandaLight &>/dev/null
plasma-apply-desktoptheme Lavanda-Light &>/dev/null

# Change Kitty Theme to Dark
$HOME/.local/bin/kitten themes --reload-in=all Biscuit-Light

# Change THEME_COLOR Environment Variable
sed -i -e 's/THEME_COLOR=1/THEME_COLOR=0/g' $HOME/.config/plasma-workspace/env/theme-color.sh
