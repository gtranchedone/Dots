# Shell
# Add shells to `/etc/shells` before running `chsh`
sudo sh -c "echo '/usr/local/bin/bash' >> /etc/shells"
sudo sh -c "echo '/usr/local/bin/zsh' >> /etc/shells"
# Change shell to zsh
chsh -s /usr/local/bin/zsh $USER
# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# Customize oh-my-zsh
cp shell/zsh/custom/* ~/.oh-my-zsh/custom
cp shell/zsh/.zshrc ~/
