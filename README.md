# Setup

## Linux

```bash
echo ".cfg" >> .gitignore
git clone --bare git@github.com:s1gtrap/dotfiles.git $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config checkout
config config --local status.showUntrackedFiles no
```

# Theme

Pull <https://github.com/romkatv/powerlevel10k> into oh-my-zsh with

```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
