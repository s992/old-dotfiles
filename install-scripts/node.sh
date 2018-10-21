#!/bin/sh

if brew ls --versions nvm > /dev/null; then
  echo "Node already installed."
  exit 0
fi

echo "Setting up node.."
brew install nvm

mkdir ~/.nvm
export NVM_DIR="$HOME/.nvm"
. $(brew --prefix nvm)/nvm.sh

nvm install v8.9.0
nvm alias stable v8.9.0
nvm alias default v8.9.0
nvm use v8.9.0
echo " -> done"
