#!/bin/sh

rm ~/.zshrc
ln -s ~/.dotfiles/zshrc ~/.zshrc
touch ~/.dotfiles/credentials
touch ~/.dotfiles/zsh/device-specific
sudo chsh -s $(which zsh) $USER
echo "Include ~/.dotfiles/ssh/hosts" >> ~/.ssh/config
chmod 600 ~/.dotfiles/ssh/hosts
chmod 600 ~/.ssh/config
rm ~/.bashrc
rm ~/.bash_logout
rm ~/.bash_history
zsh
