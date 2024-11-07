#!/bin/bash

# Disable the dock hot corner.
defaults write com.apple.dock autohide-delay -float 86400

# Show switcher in all screens.
defaults write com.apple.Dock appswitcher-all-displays -bool true

# Restart changed components.
killall Dock