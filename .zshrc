eval "$(/opt/homebrew/bin/brew shellenv)"

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export EDITOR=nvim

export PATH="$HOME/go/bin:$PATH"

source <(fzf --zsh)

export PATH="/opt/homebrew/opt/curl/bin:$PATH"

. "$HOME/.cargo/env"
