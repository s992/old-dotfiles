#!/bin/sh

echo "Installing brew stuff.."
brew update
brew upgrade
brew bundle
brew cask cleanup
echo " -> done"
