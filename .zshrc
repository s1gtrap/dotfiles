source $HOME/.zsh/aliases

# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# powerline
powerline-daemon -q
. /usr/share/powerline/bindings/zsh/powerline.zsh
