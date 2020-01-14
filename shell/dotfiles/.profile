export PATH="/usr/local/opt/python/libexec/bin:$PATH"

export NVM_DIR=~/.nvm
. $(brew --prefix nvm)/nvm.sh


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
