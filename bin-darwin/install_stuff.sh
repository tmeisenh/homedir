#!/bin/bash
# Installs stuff

install_brew() {
  if [ ! -f "$(which brew)" ]; then
		ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  else
    echo "Homebrew found"
  fi
}

update_brew() {
  brew doctor
  brew update
}

install_brew
update_brew

brew tap d12frosted/emacs-plus
brew tap universal-ctags/universal-ctags
brew tap caskroom/fonts

core_stuff=(
  ag
  coreutils 
  dos2unix 
  gawk 
  gnupg 
  gnutls 
  gnu-tar 
  findutils
  htop-osx 
  nvm
  openssl
  progress
  rbenv 
  reattach-to-user-namespace 
  sqlite 
  unrar 
  vim --env-std --override-system-vim 
  vimpager 
  watch
  wget 
  xctool 
  zsh 
)

dev_stuff=(
  automake 
  cloc
  cmake 
  erlang
  elixir
  emacs-plus
  git 
  global --with-pygments --with-ctags
  ispell
  ruby-build 
  tig
  tmux
)


echo ""
echo "Installing core brews..."
brew install "${core_stuff[@]}"

echo ""
echo "Installing development brews..."
brew install "${dev_stuff[@]}"
brew install --HEAD universal-ctags
pip install pygments

echo "Installing caskroom"
brew install caskroom/cask/brew-cask

casks=(
  cheatsheet
  font-source-code-pro
  google-chrome
  intellij-idea
  rowanj-gitx
  skype
  vagrant
  vagrant-manager
  virtualbox
  vlc
)


echo ""
echo "Installing casks..."
brew cask install "${casks[@]}"

echo "cleanining up brew..."
brew cleanup

echo "linking openssl"
brew link --force openssl

echo ""
echo ""
echo "All done with basic install"
echo ""
echo ""
