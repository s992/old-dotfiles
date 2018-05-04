#!/bin/sh

echo "Setting up Sublime.."
mkdir -p ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/
ln -fs $PWD/apps/sublime/* ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/

mkdir -p ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages/
curl -o ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages/Package\ Control.sublime-package https://packagecontrol.io/Package%20Control.sublime-package
echo " -> done"
