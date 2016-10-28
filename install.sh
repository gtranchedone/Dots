#!/usr/bin/env bash

# Update macOS and its settings
sudo softwareupdate -i -a
source macOS/update-defaults.sh

# Install Ruby & Gems, Homebrew and Apps
source macOS/gems.sh
source macOS/brew.sh
source maxOS/install-apps.sh

# Change shell and install packages
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before running `chsh`
# TODO: this doesn't work as requires permissions
echo chsh -s /usr/local/bin/zsh >> /etc/shells
echo chsh -s /usr/local/bin/bash >> /etc/shells
# Change shell
chsh -s /usr/local/bin/zsh $USER
# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# TODO: install dotfiles
