sudo apt-get install zsh
sudo apt-get install curl
sudo apt-get install dconf-cli

wget -O gogh https://git.io/vQgMr && chmod +x gogh && ./gogh && rm gogh
# the (43) Flat theme is cool

chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

ln -s ~/.oh-my-zsh/.oh-my-zsh/zshrc ~/.zshrc

# install some plugins
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/plugins/zsh-autosuggestions
sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
