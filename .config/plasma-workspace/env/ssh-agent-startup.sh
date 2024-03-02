#!/bin/bash
export SSH_ASKPASS="/usr/bin/ksshaskpass"

if ! pgrep -u $USER ssh-agent > /dev/null; then
    ssh-agent > "/home/guzman109/.ssh/.ssh-agent-info"
fi

source "/home/guzman109/.ssh/.ssh-agent"
