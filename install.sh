#!/usr/bin/env bash

echo "$(tput setaf 3)==>$(tput sgr0) Configuring system"

# Directory of this script
INSTALL_SCRIPT_DIRECTORY="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
# tput setaf 1; echo "===>$(tput sgr0)Directory => $INSTALL_SCRIPT_DIRECTORY"

# Show progress bar when using curl
if [ ! -f ~/.curlrc ]; then
  echo "$(tput setaf 6)==>$(tput sgr0) Make curl show progress-bar"
  echo progress-bar >> ~/.curlrc
fi

# Change shell and install dotfiles
echo "$(tput setaf 6)==>$(tput sgr0) Change shell and install dotfiles"
source $INSTALL_SCRIPT_DIRECTORY/macOS/change-shell.sh

# Update macOS and its settings
echo "$(tput setaf 6)==>$(tput sgr0) Update macOS and installed apps"
source $INSTALL_SCRIPT_DIRECTORY/macOS/update-system.sh
source $INSTALL_SCRIPT_DIRECTORY/macOS/update-defaults.sh

# Install Ruby Gems, Homebrew recipes and Mac Apps. Order is important.
echo "$(tput setaf 6)==>$(tput sgr0) Install dependencies"
source $INSTALL_SCRIPT_DIRECTORY/macOS/brew.sh
source $INSTALL_SCRIPT_DIRECTORY/macOS/gems.sh
source $INSTALL_SCRIPT_DIRECTORY/macOS/install-apps.sh
