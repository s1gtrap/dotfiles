source $HOME/.zsh/aliases

# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# powerline
powerline-daemon -q
. /usr/local/lib/python3.9/site-packages/powerline/bindings/zsh/powerline.zsh
export PATH="/usr/local/opt/postgresql@13/bin:$PATH"
