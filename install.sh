#!/usr/bin/env bash

run_script() {
  source $1
  if [[ $? -ne 0 ]]; then
    echo "$(tput setaf 1)An error has occurred and the installation was aborted. Check the logs for info.$(tput sgr0)"
    exit 1
  fi
}

echo "$(tput setaf 3)==>$(tput sgr0) Configuring system"

# Directory of this script
INSTALL_SCRIPT_DIRECTORY="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo "$(tput setaf 1)==>$(tput sgr0) Directory => $INSTALL_SCRIPT_DIRECTORY"

# Show progress bar when using curl
if [ ! -f ~/.curlrc ]; then
  echo "$(tput setaf 6)==>$(tput sgr0) Make curl show progress-bar"
  echo progress-bar >> ~/.curlrc
fi

# Change shell and install dotfiles
echo "$(tput setaf 6)==>$(tput sgr0) Change shell and install dotfiles"
run_script $INSTALL_SCRIPT_DIRECTORY/macOS/change-shell.sh

# Update macOS and its settings
echo "$(tput setaf 6)==>$(tput sgr0) Update macOS and installed apps"
run_script $INSTALL_SCRIPT_DIRECTORY/macOS/update-system.sh
run_script $INSTALL_SCRIPT_DIRECTORY/macOS/update-defaults.sh

# Install Ruby Gems, Homebrew recipes and Mac Apps. Order is important.
echo "$(tput setaf 6)==>$(tput sgr0) Install dependencies"
run_script $INSTALL_SCRIPT_DIRECTORY/macOS/brew.sh
run_script $INSTALL_SCRIPT_DIRECTORY/macOS/gems.sh
run_script $INSTALL_SCRIPT_DIRECTORY/macOS/install-apps.sh

# Install fonts for shell Theme
pip install git+git://github.com/powerline/powerline

# Finished!
echo "$(tput setaf 6)==>$(tput sgr0) Installation complete. Please restart your Terminal."
