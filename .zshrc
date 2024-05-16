eval "$(/opt/homebrew/bin/brew shellenv)"

# opam env
[[ ! -r /Users/s1g/.opam/opam-init/init.zsh ]] || source /Users/s1g/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

source .antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
#antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle nvm
antigen bundle node
antigen bundle npm
#antigen bundle docker

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme agnoster

# Tell Antigen that you're done.
antigen apply

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

#export PATH="/opt/homebrew/opt/llvm/bin:$PATH"

#export DBUS_SESSION_BUS_ADDRESS="unix:path=$DBUS_LAUNCHD_SESSION_BUS_SOCKET"

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export EDITOR=nvim
export PATH="/opt/homebrew/opt/bison/bin:$PATH"
export PATH="/opt/homebrew/opt/llvm@16/bin:$PATH"

if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export PATH="/opt/homebrew/opt/llvm/bin:$PATH"

eval "$(fzf --zsh)"

export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
