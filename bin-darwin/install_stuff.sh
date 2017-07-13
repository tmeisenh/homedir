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

core_stuff=(
  ag
  coreutils 
  dos2unix 
  gawk 
  gnupg 
  gnutls 
  gnu-tar 
  findutils
  htop 
  htop-osx 
  nvm
  openssl
  progress
  reattach-to-user-namespace 
  sqlite 
  tmux 
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
  git 
  tig
  ruby-build 
  rbenv
)

echo ""
echo "Installing core brews..."
brew install "${core_stuff[@]}"

echo ""
echo "Installing development brews..."
brew install "${dev_stuff[@]}"

echo ""
echo "Installing ctags..."
brew install ctags --HEAD

echo "Installing caskroom"
brew install caskroom/cask/brew-cask

casks=(
  cheatsheet
  google-chrome
  intellij-idea
  rowanj-gitx
  skype
  vagrant
  vagrant-manager
  virtualbox
  vlc
)

brew tap caskroom/fonts

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
