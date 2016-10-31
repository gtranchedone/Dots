plugins=(git bundler osx rake ruby colored-man-pages colorize copydir history vundle)

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Path for RVM
export PATH="$PATH:$HOME/.rvm/bin" 
# Path for NVM
export NVM_DIR=$HOME/.nvm

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Default user for theme
DEFAULT_USER=$USER

# Required for RVM
source ~/.profile

# fortune: brew install fortune ponysay
fortune | ponysay
