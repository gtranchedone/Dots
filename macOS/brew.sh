#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Check for Homebrew and install it if missing
if test ! $(which brew)
then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew tap homebrew/versions
brew tap homebrew/dupes
brew tap Goles/battery

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade --all

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install latest Bash.
brew install bash
brew install bash-completion
# Install latest Zsh
brew install zsh

# Programming Languages and Development tools
brew install rvm
brew install nvm
brew install python
brew install git
brew install mongodb
brew install source-highlight

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install grep --with-default-names
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen

# Install other useful binaries.
brew install tree
brew install ponysay
brew install fortune
brew install wget
brew install wifi-password

# Remove outdated versions from the cellar.
brew cleanup
