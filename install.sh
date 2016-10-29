#!/usr/bin/env bash

# Show progress bar when using curl
echo progress-bar >> ~/.curlrc

# Update macOS and its settings
sudo softwareupdate -i -a
sh macOS/update-defaults.sh

# Install Ruby Gems, Homebrew recipes and Mac Apps
sh macOS/gems.sh
sh macOS/brew.sh
sh macOS/install-apps.sh
sh macOS/change-shell.sh
