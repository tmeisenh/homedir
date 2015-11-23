#!/bin/bash
# WIP script to setup a mac to my specs...

install_brew() {
  if [ ! -f "$(which brew)" ]; then
		ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi
}


brew doctor

brew install automake cmake git wget openssl htop zsh vim rbenv ack coreutils \
 dos2unix gawk gnupg gnutls go htop-osx python rbenv ruby-build sqlite tmux \
 reattach-to-user-namespace unrar gnu-tar vimpager xctool stow

brew install caskroom/cask/brew-cask

brew cask install google-chrome
brew cask install iterm2
brew cask install rowanj-gitx
brew cask install vagrant
brew cask install vagrant-manager
brew cask install virtualbox

brew tap caskroom/fonts
brew cask install font-source-code-pro
brew cask install font-sauce-code-powerline

#pip install powerline-status
#pip install psutil
