#!/usr/bin/env bash

export PATH=/usr/local/bin:/usr/bin:/bin

if [ ! -f "$(which brew)" ]; then
  echo "homebrew is not installed"
  exit 1
fi

(brew update && brew upgrade ; brew doctor ; brew cleanup)
(brew cask update ; brew cask doctor)
