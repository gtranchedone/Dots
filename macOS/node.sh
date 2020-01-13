#!/bin/sh

if test ! $(which nvm)
then
  echo "Installing Node Version Manager"
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash

  echo "Installing a stable version of Node..."

  # Install the latest stable version of node
  nvm install node

  # Switch to the installed version
  nvm use node

  # Use the stable version of node by default
  nvm alias default node
fi

# All `npm install <pkg>` commands will pin to the version that was available at the time you run the command
npm config set save-exact = true

packages=(
    diff-so-fancy
    git-recall
    git-recent
    git-open
    http-server
    servedir
    flow-bin
    flow-typed
    npm-check-updates
    webpack
    nodemon
    svgo
)

npm update
npm install -g "${packages[@]}"
brew install yarn
