# nvm env
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# opam env
[[ ! -r /Users/s1g/.opam/opam-init/init.zsh ]] || source /Users/s1g/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

source /usr/local/share/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use ohmyzsh/ohmyzsh

# Fork hence hadenlabs/zsh-core had a typo
antigen bundle s1gtrap/zsh-core --branch=main

# rustup
antigen bundle luismayta/zsh-rust --branch=main

# misc
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle heroku
antigen bundle nvm

# Default bundles
antigen bundle git
antigen bundle pip
antigen bundle brew
antigen bundle lein
antigen bundle golang
antigen bundle ember-cli
antigen bundle emoji
antigen bundle node
antigen bundle npm
antigen bundle rails
antigen bundle gem
antigen bundle chruby
antigen bundle bundler
antigen bundle docker
antigen bundle dotenv
antigen bundle gulp
antigen bundle virtualenv
antigen bundle virtualenvwrapper
antigen bundle vagrant
antigen bundle yarn
antigen bundle z
antigen bundle command-not-found

# Load the theme.
antigen theme agnoster

# Tell Antigen that you're done.
antigen apply

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
