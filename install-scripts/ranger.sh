#!/bin/sh

echo "Installing ranger config.."
if [ -d ~/.config/ranger ]; then
  rm -r ~/.config/ranger
fi

ln -fs $PWD/apps/ranger ~/.config/ranger
echo " -> done"
