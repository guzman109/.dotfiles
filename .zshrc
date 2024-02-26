# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd beep extendedglob nomatch notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/guzman109/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
##################################################################################################################
PATH="$HOME/.local/bin:$PATH"


# Rust
source "$HOME/.cargo/env"

# Alias
alias ls="eza"
alias ksh="kitty +kitten ssh"
alias gcm="git-credential-manager"
alias cd="z"
alias cat="batcat"
# Starship
eval "$(starship init zsh)"
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"

# fnm
export PATH="/home/guzman109/.local/share/fnm:$PATH"
eval "`fnm env`"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"


# bun completions
[ -s "/home/guzman109/.bun/_bun" ] && source "/home/guzman109/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

#zoxide
eval "$(zoxide init zsh)"
