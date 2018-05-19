#!/bin/sh

echo "Installing python packages.."
pip install virtualenv virtualenvwrapper pipenv
echo " -> done"

echo "Setting up virtual environments.."
virtualenv ~/virtualenvs/nvim -p python2
virtualenv ~/virtualenvs/nvim3 -p python3

source ~/virtualenvs/nvim/bin/activate
pip2 install neovim
deactivate

source ~/virtualenvs/nvim3/bin/activate
pip3 install neovim
deactivate
echo " -> done"

