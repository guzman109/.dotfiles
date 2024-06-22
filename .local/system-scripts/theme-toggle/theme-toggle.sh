#!/bin/bash
source $HOME/.local/system-scripts/theme-toggle/theme-color.sh;
echo ${THEME_COLOR}
if [ ${THEME_COLOR} = "LIGHT" ]; then
# Change Plasma Color to Dark
plasma-apply-colorscheme BreezeDark &>/dev/null
# plasma-apply-wallpaperimage "$HOME/Pictures/Forresty Skies/contents/images_dark/3840x2160.png"

# Change Kitty Theme to Dark
kitten themes --reload-in=all "Biscuit-Dark"
sed -i -e 's/LIGHT/DARK/g' $HOME/.local/system-scripts/theme-toggle/theme-color.sh

else
# Change Plasma Color and Cursor to Light
plasma-apply-colorscheme BreezeLight &>/dev/null
# plasma-apply-wallpaperimage "$HOME/Pictures/Forresty Skies/contents/images/3840x2160.png"

# Change Kitty Theme to Dark
kitten themes --reload-in=all "Biscuit-Light"

sed -i -e 's/DARK/LIGHT/g' $HOME/.local/system-scripts/theme-toggle/theme-color.sh
fi
