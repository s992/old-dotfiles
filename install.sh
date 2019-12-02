#!/bin/sh
set -euo pipefail

./install-scripts/mac-settings.sh
./install-scripts/brew-install.sh
./install-scripts/zsh-install.sh
./install-scripts/cli-tools.sh
./install-scripts/node.sh
./install-scripts/mas-cli.sh
./install-scripts/brew.sh
./install-scripts/python.sh
./install-scripts/yarn.sh
./install-scripts/iterm.sh
./install-scripts/vscode.sh
./install-scripts/sublime.sh
./install-scripts/chrome.sh
./install-scripts/ranger.sh
./install-scripts/vimplug.sh
./install-scripts/neovim.sh
./install-scripts/starship.sh
./install-scripts/coc-nvim.sh
./install-scripts/dotfiles.sh

echo "Manual steps:"
echo " -> Add name/email to home/.gitconfig"
echo " -> Add necessary secrets to home/.secrets"
echo " -> Add AWS credentials to home/aws/credentials"
echo " -> Add home/.functions_private and home/.aliases_private"
echo " -> Install RVM"
echo " -> gem install tmuxinator"
echo " -> Import apps/iterm2/Relaxed.itermcolors"
echo " -> Update iTerm2 settings directory"

