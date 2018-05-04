#!/bin/sh

if test ! $(which brew)
then
  echo "Installing brew + cask.."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew doctor
  echo " -> done"
fi
