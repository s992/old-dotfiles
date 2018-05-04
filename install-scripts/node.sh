#!/bin/sh

echo "Setting up node.."
brew install nvm
nvm install v8.9.0
nvm alias stable v8.9.0
nvm alias default v8.9.0
nvm use v8.9.0
echo " -> done"
