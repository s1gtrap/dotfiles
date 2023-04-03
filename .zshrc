source $HOME/.zsh/aliases


# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME=agnoster
plugins=(git)
source $ZSH/oh-my-zsh.sh


# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=/Users/s1g/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;


# gobin
export PATH=$PATH:$(go env GOPATH)/bin


# llvm
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"


# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


# cbruby
source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh
chruby ruby
