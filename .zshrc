# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd beep extendedglob nomatch notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/guzman109/.zshrc'

fpath+=~/.zfunc
autoload -Uz compinit
compinit
# End of lines added by compinstall
##################################################################################################################
# Load Completions
autoload -U compinit && compinit
# Local PATH
source "$HOME/.profile"
PATH="$HOME/.local/bin:$PATH"
PATH="$HOME/.local/share/bob/nvim-bin:$PATH"

# Alias
alias ls="eza"
alias ksh="kitty +kitten ssh"
alias cat="bat"
alias icat="kitty icat"
alias switch-theme="kitty +kitten themes"
alias klite="kitten themes --reload-in=all 'Catppuccin-Latte'"
alias knite="kitten themes --reload-in=all 'Catppuccin-Macchiato'"
alias cargo-update="cargo-install-update install-update --all"
alias mc="mcli"
# Starship
eval "$(starship init zsh)"
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"

# fnm
eval "$(fnm env --use-on-cd)"

# Deno
export DENO_INSTALL="$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

source "$HOME/.rye/env"
eval "$(uv generate-shell-completion zsh)"
