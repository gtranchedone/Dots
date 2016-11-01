# Shell
echo "$(tput setaf 6)==>$(tput sgr0) Changing shell to zsh..."
# Add shells to `/etc/shells` before running `chsh`
sudo sh -c "echo '/usr/local/bin/bash' >> /etc/shells"
sudo sh -c "echo '/usr/local/bin/zsh' >> /etc/shells"
# Change shell to zsh
chsh -s /usr/local/bin/zsh $USER
# Install oh-my-zsh
echo "$(tput setaf 6)==>$(tput sgr0) Install oh-my-zsh..."
curl -L https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
# Customize shell
echo "$(tput setaf 6)==>$(tput sgr0) Install dotfiles and oh-my-zsh cutomizations..."
cp $INSTALL_SCRIPT_DIRECTORY/shell/zsh/oh-my-zsh-custom/* ~/.oh-my-zsh/custom
cp $INSTALL_SCRIPT_DIRECTORY/shell/zsh/dotfiles/* ~/
# Reload
source ~/.zshrc
