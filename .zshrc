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
### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk

# Zinit plugins
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-syntax-highlighting

# Load Completions
autoload -U compinit && compinit

# Local PATH
PATH="$HOME/.local/bin:$PATH"

# Alias
alias ls="eza"
alias ksh="kitty +kitten ssh"
alias gcm="git-credential-manager"
alias cat="bat"
alias icat="kitty icat"
alias switch-theme="kitty +kitten themes"
alias cargo-update="cargo-install-update install-update --all"
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

