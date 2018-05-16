#!/bin/sh

echo "Installing neovim config.."
if [ -d ~/.config/nvim ]; then
  rm -r ~/.config/nvim
fi

ln -fs $PWD/apps/nvim ~/.config/nvim
echo " -> done"
