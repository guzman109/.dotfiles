#!/bin/bash
source $HOME/.local/system-scripts/theme-toggle/theme-color.sh;
echo ${THEME_COLOR}
if [ ${THEME_COLOR} = "DARK" ]; then
# Change Plasma Color to Dark
plasma-apply-colorscheme BreezeDark &>/dev/null
/usr/libexec/plasma-changeicons Colloid-Dark &>/dev/null

# Change Kitty Theme to Dark
kitten themes --reload-in=all "Catppuccin-Frappe"

else
# Change Plasma Color and Cursor to Light
plasma-apply-colorscheme BreezeLight &>/dev/null
/usr/libexec/plasma-changeicons Colloid-Light &>/dev/null

# Change Kitty Theme to Dark
kitten themes --reload-in=all "Catppuccin-Latte"

fi
