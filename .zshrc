# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd beep extendedglob nomatch notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/guzman.109/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
##################################################################################################################
# Load Completions
autoload -U compinit && compinit
# Homebrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
# Local PATH
PATH="$HOME/.local/bin:$PATH"

# Alias
alias ls="eza"
alias ksh="kitty +kitten ssh"
alias gcm="git-credential-manager"
alias cat="bat"
alias icat="kitty icat"
alias switch-theme="kitty +kitten themes"
alias klite="kitten themes --reload-in=all Biscuit-Light"
alias knite="kitten themes --reload-in=all Biscuit-Dark"

# Starship
eval "$(starship init zsh)"
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"



# Deno
export DENO_INSTALL="/home/guzman.109/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# ROS2
# source /opt/ros/jazzy/setup.zsh

