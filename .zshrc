# oh-my-zsh
export ZSH="/home/s1g/.oh-my-zsh"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# powerline
powerline-daemon -q
. /usr/share/powerline/bindings/zsh/powerline.zsh
