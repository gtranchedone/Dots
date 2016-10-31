#!/usr/bin/env bash

# Install rvm and latest ruby
echo "$(tput setaf 6)==>$(tput sgr0) Install RVM and latest ruby"
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -L https://get.rvm.io | bash -s stable --ruby
rvm cleanup all

# Make RVM work
source $HOME/.zshrc

# Install rubies
echo "$(tput setaf 6)==>$(tput sgr0) Install rubies"
gem install cocoapods
gem install fastlane
gem install rails

# Update existing rubies and remove outdated versions
echo "$(tput setaf 6)==>$(tput sgr0) Cleanup old rubies"
gem update
gem cleanup --dryrun
