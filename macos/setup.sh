#!/bin/bash

# Dock-related
echo "Make sure that Hide Dock automatically is set in settings."
defaults write com.apple.dock autohide-delay -float 86400 # disable the hot corner
killall Dock # restart component

# Alt-tab
brew install --cask alt-tab
echo "You need to setup alt-tab in its settings."
