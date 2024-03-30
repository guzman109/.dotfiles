#!/bin/zsh

if [ -z "$VIRTUAL_ENV" ]; then
  echo "No VENV"
  if [ -d ./.venv ]; then
    echo "Activating .venv"
    . .venv/bin/activate;
  else
    DIR=$(basename $PWD)
    HATCH="~/.local/share/hatch/env/virtual"
    if [ -d "$HATCH/$DIR" ]; then
      echo "Activating hatch shell"
      hatch shell;
    fi
  fi
  echo "No VENV, need to activate"
fi

