#!/bin/bash

# Change Plasma Color to Dark
plasma-apply-colorscheme BreezeDark &>/dev/null

# Change Kitty Theme to Dark
$HOME/.local/bin/kitten themes --reload-in=all Rosé Pine Moon
