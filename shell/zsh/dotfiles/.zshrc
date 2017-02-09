export TERM="xterm-256color"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/Gianluca/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="super-simple"
# Default user for theme
DEFAULT_USER=$USER

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(extract git node npm)

# Load oh-my-sh
source $ZSH/oh-my-zsh.sh

# RVM Support
export PATH="$PATH:$HOME/.rvm/bin"

if [[ -r ~/.rvm/scripts/rvm ]]; then
  . ~/.rvm/scripts/rvm
fi

# Fastlane autocomplete

if [[ -r ~/.fastlane/completions/completion.sh ]]; then
  . ~/.fastlane/completions/completion.sh
fi


export NVM_DIR="/Users/Gianluca/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
