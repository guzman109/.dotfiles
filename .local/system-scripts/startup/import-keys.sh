#!/bin/bash

# Wait for kwallet
kwallet-query -l kdewallet > /dev/null

for KEY in $(ls $HOME/.ssh/id_* | grep -v \.pub); do
  ssh-add -q ${KEY} </dev/null
done
