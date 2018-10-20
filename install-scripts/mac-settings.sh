#!/bin/sh

echo "Configuring Mac.."
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.finder AppleShowAllFiles -bool true
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
echo " -> done"
