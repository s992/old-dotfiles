#!/bin/sh

if test ! -d ~/.oh-my-zsh
then
  echo "Installing zsh.."
  brew install zsh
  curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
  echo " -> done"
fi
