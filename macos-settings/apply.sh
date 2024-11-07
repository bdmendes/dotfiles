#!/bin/bash

# Disable the dock hot corner.
defaults write com.apple.dock autohide-delay -float 86400 && killall Dock