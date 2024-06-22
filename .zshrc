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
# Load Completions
autoload -U compinit && compinit
# Local PATH
PATH="$HOME/.local/bin:$PATH"
PATH="$HOME/.local/share/bob/nvim-bin:$PATH"

# Alias
alias ls="eza"
alias ksh="kitty +kitten ssh"
alias cat="bat"
alias icat="kitty icat"
alias switch-theme="kitty +kitten themes"
alias klite="kitten themes --reload-in=all 'Biscuit-Light'"
alias knite="kitten themes --reload-in=all 'Biscuit-Dark'"
alias cargo-update="cargo-install-update install-update --all"

alias update-kitty="zsh ~/.local/system-scripts/update-kitty.zsh"

# Starship
eval "$(starship init zsh)"
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"

# fnm
eval "$(fnm env --use-on-cd)"

# Deno
export DENO_INSTALL="/home/guzman109/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"


# Created by `userpath` on 2024-06-12 18:15:11
export PATH="$PATH:/home/guzman109/.local/share/hatch/pythons/3.12/python/bin"

# Created by `userpath` on 2024-06-12 18:15:37
export PATH="$PATH:/home/guzman109/.local/share/hatch/pythons/3.7/python/install/bin"

# Created by `userpath` on 2024-06-12 18:15:38
export PATH="$PATH:/home/guzman109/.local/share/hatch/pythons/3.8/python/bin"

# Created by `userpath` on 2024-06-12 18:15:40
export PATH="$PATH:/home/guzman109/.local/share/hatch/pythons/3.9/python/bin"

# Created by `userpath` on 2024-06-12 18:15:42
export PATH="$PATH:/home/guzman109/.local/share/hatch/pythons/3.10/python/bin"

# Created by `userpath` on 2024-06-12 18:15:44
export PATH="$PATH:/home/guzman109/.local/share/hatch/pythons/3.11/python/bin"

# Created by `userpath` on 2024-06-12 18:15:49
export PATH="$PATH:/home/guzman109/.local/share/hatch/pythons/pypy2.7/pypy2.7-v7.3.15-linux64/bin"

# Created by `userpath` on 2024-06-12 18:15:54
export PATH="$PATH:/home/guzman109/.local/share/hatch/pythons/pypy3.9/pypy3.9-v7.3.15-linux64/bin"

# Created by `userpath` on 2024-06-12 18:15:59
export PATH="$PATH:/home/guzman109/.local/share/hatch/pythons/pypy3.10/pypy3.10-v7.3.15-linux64/bin"
