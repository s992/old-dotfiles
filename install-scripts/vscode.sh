#!/bin/sh

echo "Setting up VSCode.."
mkdir -p ~/Library/Application\ Support/Code/User

ln -fs $PWD/apps/vs-code/settings.json ~/Library/Application\ Support/Code/User/
ln -fs $PWD/apps/vs-code/keybindings.json ~/Library/Application\ Support/Code/User/

for module in `cat apps/vs-code/extensions.list`; do
    code --install-extension "$module" || true
done
echo " -> done"
