#!/bin/sh

echo "Setting up iTerm.."
mkdir -p ~/Library/Application\ Support/iTerm2/DynamicProfiles
ln -fs $PWD/apps/iterm2/profiles.json ~/Library/Application\ Support/iTerm2/DynamicProfiles/
echo " -> done"
