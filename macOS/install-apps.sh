#!/bin/bash

# Check for Homebrew and install it if missing
if test ! $(which brew)
then
  sh brew.sh
fi

brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/fonts

# Install Caskroom
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

# Install packages
apps=(
    appcode
    atom
    backblaze
    charles
    cleanmymac
    dash
    flux
    iterm2
    firefox
    google-chrome
    nordvpn
    reveal
    rubymine
    slack
    sketch
    skype
    sourcetree
    spotify
    textexpander
    tokens
    transmission
    vlc
)

brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package

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
mas install 457622435 # Yoink
mas install 867299399 # OmniFocus
mas install 425424353 # The Unarchiver
mas install 568494494 # Pocket
mas install 803453959 # Slack
mas install 406056744 # Evernote
mas install 443987910 # 1Password

# Developer Tools
mas install 455484422 # Liya
mas install 497799835 # Xcode
mas install 587512244 # Kaleidoscope
mas install 507135296 # IconKit
mas install 641027709 # Color Picker
mas install 933436921 # Smart Resizer
mas install 475333727 # LocalizableStringsMerge
mas install 1007457278 # Realm Browser

# Apple Tools
mas install 409201541 # Pages
mas install 409203825 # Numbers
mas install 409183694 # Keynote
mas install 408981434 # iMovie
mas install 682658836 # GarageBand
mas install 490152466 # iBooks Author

# Others
mas install 1090488118 # Gemini 2
mas install 789738094 # Scribe
mas install 847496013 # Deckset
mas install 557168941 # Tweetbot
mas install 402398561 # MindNode Pro
mas install 711830901 # OmniGraffle
mas install 710575188 # QuickCast
mas install 660234210 # Smart Converter Pro 2
