/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/usr/local/bin/brew shellenv)"') >> /Users/s1g/.zprofile
    eval "$(/usr/local/bin/brew shellenv)"
brew analytics off
brew install antigen

ssh-keygen -o -a 120 -t ed25519 -f ~/.ssh/id_ed25519
echo "Host github.com
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_ed25519" > .ssh/config
ssh-add --apple-use-keychain ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub | pbcopy
open 'https://github.com/settings/ssh/new'
echo 'The SSH key was copied to the clipboard, add it to GitHub before continuing..'; read

echo ".cfg" >> .gitignore
git clone --bare git@github.com:s1gtrap/dotfiles.git $HOME/.cfg
/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME checkout
/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME config --local status.showUntrackedFiles no

function getstring() {
	read -p "Enter your $2 [$1]: " name
	name=${name:-$1}
	echo $name
}

function username() {
	getstring "$(id -P $(stat -f%Su /dev/console) | awk -F '[:]' '{print $8}')" name
}

function useremail() {
	getstring "$(defaults read MobileMeAccounts Accounts | grep AccountID | cut -d \" -f2)" email
}

id -P $(stat -f%Su /dev/console) | awk -F '[:]' '{print $8}'
git config --global user.name "$(username)"
git config --global user.email "$(useremail)"

brew install neovim
brew install --cask iterm2
open -a "iterm"
