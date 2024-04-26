#!/bin/bash
#
if [ THEME_COLOR == 0 ]; then
  # Change Plasma Color to Dark
  plasma-apply-colorscheme BreezeDark &>/dev/null

  # Change Kitty Theme to Dark
  # $HOME/.local/bin/kitten themes --reload-in=all Rosé Pine Moon
  sed -i -e 's/THEME_COLOR=0/THEME_COLOR=1/g' $HOME/.config/plasma-workspace/env/theme-color.sh
  export THEME_COLOR=1
else
 # Change Plasma Color and Cursor to Light
 plasma-apply-colorscheme BreezeLight &>/dev/null
 
 # Change Kitty Theme to Dark
 # $HOME/.local/bin/kitten themes --reload-in=all Rosé Pine Dawn 
 sed -i -e 's/THEME_COLOR=1/THEME_COLOR=0/g' $HOME/.config/plasma-workspace/env/theme-color.sh
 export THEME_COLOR=0
fi


