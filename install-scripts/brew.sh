#!/bin/sh

echo "Installing brew stuff.."
brew update
brew upgrade
brew bundle
brew cleanup
echo " -> done"
