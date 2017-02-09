#!/usr/bin/env bash

# Install rvm and latest ruby
echo "$(tput setaf 6)==>$(tput sgr0) Install RVM and latest ruby"
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -L https://get.rvm.io | bash -s stable --ruby

# Make RVM work
reload

# Install rubies
echo "$(tput setaf 6)==>$(tput sgr0) Install rubies"
gem install bundler
gem install cocoapods
gem install fastlane
gem install github-pages
gem install rails

# Cleanup
echo "$(tput setaf 6)==>$(tput sgr0) Cleanup old rubies"
rvm cleanup all
gem update
gem cleanup --dryrun
