#!/bin/sh

echo "Installing vimplug.."

curl -fLo /tmp/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir -p ~/.vim/autoload && cp /tmp/plug.vim "$_"
mkdir -p ~/.local/share/nvim/site/autoload && cp /tmp/plug.vim "$_"

echo " -> done"
