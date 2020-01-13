#!/bin/sh

echo "$(tput setaf 6)==>$(tput sgr0) Installing apps..."

# Check for Homebrew and install it if missing
if test ! $(which brew)
then
  sh brew.sh
fi

# Install non App Store apps
apps=(
  # Screen Saver
  aerial
  # Essensials
  expressvpn
  brave-browser
  google-chrome
  firefox
  notion
  spotify
  cleanmymac
  fantastical
  google-backup-and-sync
  # Development
  iterm2
  visual-studio-code
  sourcetree
  charles
  docker
  postman
  # Design
  sketch
  skyfonts
  abstract
  zeplin
  # Others
  transmission
  vlc
  skype
  whatsapp
  discord
  kindle
  deckset
  caffeine
  # Blockchain
  keybase
  ledger-live
)

brew cask install "${apps[@]}"
brew cask upgrade

# Install Fronts
brew tap homebrew/cask-fonts
brew cask install font-fira-code

# Install Mac App Store utility
brew install mas

# Install tool to fix problem with MAS
brew install reattach-to-user-namespace
reattach-to-user-namespace mas install

# Update Mac App Store apps
mas update
mas upgrade

# Install Mac App Store Apps

# Essentials
mas install 443987910 # 1Password
mas install 406056744 # Evernote
mas install 904280696 # Things 3
mas install 457622435 # Yoink
mas install 568494494 # Pocket
mas install 803453959 # Slack
mas install 425424353 # The Unarchiver
mas install 931657367 # Calcbot
mas install 1179623856 # Pastebot

# Developer Tools
mas install 497799835 # Xcode
mas install 455484422 # Liya
mas install 475333727 # LocalizableStringsMerge

# Design Tools
mas install 407963104 # Pixelmator

# Others
mas install 1384080005 # Tweetbot
mas install 1289197285 # MindNode
mas install 1449412482 # Reeder 4
