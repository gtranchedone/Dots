export TERM="xterm-256color"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="xxf"
# Default user for theme
DEFAULT_USER=$USER

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# Load oh-my-sh
source $ZSH/oh-my-zsh.sh

# Path for RVM
export PATH="$PATH:$HOME/.rvm/bin"

# Required for RVM
if [[ -r ~/.rvm/scripts/rvm ]]; then
    . ~/.rvm/scripts/rvm
fi

if [[ -r ~/.profile ]]; then
    . ~/.profile
fi

# Load aliases
if [[ -r ~/.aliasrc ]]; then
  . ~/.aliasrc
fi

# Load functions
if [[ -r ~/.functionsrc ]]; then
  . ~/.functionsrc
fi

# fortune: brew install fortune ponysay
# fortune | ponysay
