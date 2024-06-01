#!/bin/bash
export SSH_ASKPASS="/usr/bin/ksshaskpass"

if ! pgrep -u $USER ssh-agent > /dev/null; then
    ssh-agent > "$HOME/.ssh/.ssh-agent-info"
fi

source "$HOME/.ssh/.ssh-agent"
