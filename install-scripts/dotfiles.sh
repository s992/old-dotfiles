#!/bin/sh

echo "Creating dotfile symlinks.."
touch $PWD/home/.secrets
touch $PWD/home/.functions_private
touch $PWD/home/.aliases_private
touch $PWD/home/.gitconfig
touch $PWD/home/.aws/credentials

ln -fs $PWD/home/.aliases ~/.aliases
ln -fs $PWD/home/.aliases_private ~/.aliases_private
ln -fs $PWD/home/.exports ~/.exports
ln -fs $PWD/home/.functions ~/.functions
ln -fs $PWD/home/.functions_private ~/.functions_private
ln -fs $PWD/home/.gitconfig ~/.gitconfig
ln -fs $PWD/home/.gitignore ~/.gitignore
ln -fs $PWD/home/.ignore ~/.ignore
ln -fs $PWD/home/.ignore ~/.agignore
ln -fs $PWD/home/.nvmrc ~/.nvmrc
ln -fs $PWD/home/.secrets ~/.secrets
ln -fs $PWD/home/.taskrc ~/.taskrc
ln -fs $PWD/home/.taskwarrior_fns ~/.taskwarrior_fns
ln -fs $PWD/home/.tmux/.tmux.conf ~/.tmux.conf
ln -fs $PWD/home/tmuxinator.zsh ~/tmuxinator.zsh
ln -fs $PWD/home/.vimrc ~/.vimrc
ln -fs $PWD/home/.zshenv ~/.zshenv
ln -fs $PWD/home/.zshrc ~/.zshrc
ln -fs $PWD/home/.aws ~/.aws
echo " -> done"
