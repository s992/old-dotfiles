#!/bin/sh

echo "Installing alacritty config.."
if [ -d ~/.config/alacritty ]; then
  rm -r ~/.config/alacritty
fi

ln -fs $PWD/apps/alacritty ~/.config/alacritty
echo " -> done"
