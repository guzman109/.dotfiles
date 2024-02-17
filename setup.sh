#!/bin/bash
#
#Author: Carlos Guzman
#
#Help script to sym link all configs with GNU Stow
#

stow config -t ~/.config

rm -rfd ~/.config/nvim/lua/custom/chadrc.lua
stow nvim -t ~/.config/nvim/lua/custom
