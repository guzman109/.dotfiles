#!/bin/bash

# Change Plasma Color and Cursor to Light
plasma-apply-colorscheme BreezeLight &>/dev/null

# Change Kitty Theme to Dark
$HOME/.local/bin/kitten themes --reload-in=all Rosé Pine Dawn
