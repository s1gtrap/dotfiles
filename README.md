# macOS setup

1. Install [Homebrew](https://brew.sh)

    1. Don't forget to change `.zprofile` for `PATH` changes (as noted after install):
        ```zsh
        % cat .zprofile 
        
        eval "$(/usr/local/bin/brew shellenv)"
        ```

1. Generate SSH key:
   ```zsh
   ssh-keygen -o -a 120 -t ed25519
   ```

   1. Upload to wherever necessary: https://github.com/settings/keys
      
1. Load these dotfiles in accordance with https://www.atlassian.com/git/tutorials/dotfiles

   ```zsh
   alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
   echo ".cfg" >> .gitignore
   git clone --bare git@github.com:s1gtrap/dotfiles.git $HOME/.cfg
   alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
   config checkout
   ```


1. Install Neovim with `brew install neovim`

1. Install iTerm2 with `brew install --cask iterm2`

1. Install other utilities `brew install the_silver_searcher ripgrep tree`
