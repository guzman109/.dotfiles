#!/bin/bash
source $HOME/.local/system-scripts/theme-toggle/theme-color.sh;
echo ${THEME_COLOR}

export WAYLAND_DISPLAY=NULL

if [ ${THEME_COLOR} = "LIGHT" ]; then
# Change Plasma Color to Dark
plasma-apply-colorscheme BreezeDark &>/dev/null
/usr/libexec/plasma-changeicons Papirus-Dark &>/dev/null

# Change Kitty Theme to Dark
kitten themes --reload-in=all "Biscuit-Dark"
sed -i -e 's/LIGHT/DARK/g' "$HOME/.local/system-scripts/theme-toggle/theme-color.sh"

else
# Change Plasma Color and Cursor to Light
plasma-apply-colorscheme BreezeLight &>/dev/null
/usr/libexec/plasma-changeicons Papirus-Light &>/dev/null

# Change Kitty Theme to Dark
kitten themes --reload-in=all "Biscuit-Light"

sed -i -e 's/DARK/LIGHT/g' "$HOME/.local/system-scripts/theme-toggle/theme-color.sh"

fi
