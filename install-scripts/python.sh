#!/bin/sh

echo "Installing python packages.."
pip install virtualenv virtualenvwrapper pipenv
echo " -> done"

echo "Setting up virtual environments.."
virtualenv ~/virtualenvs/nvim -p python2
virtualenv ~/virtualenvs/nvim3 -p python3
virtualenv ~/virtualenvs/dd -p python2
virtualenv ~/virtualenvs/personal -p python2

source ~/virtualenvs/nvim/bin/activate
pip2 install neovim
deactivate

source ~/virtualenvs/nvim3/bin/activate
pip3 install neovim
deactivate

source ~/virtualenvs/dd/bin/activate
pip2 install ipython
deactivate

source ~/virtualenvs/personal/bin/activate
pip2 install ipython
deactivate
echo " -> done"

