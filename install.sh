#!/bin/sh

if [ ! -x "$(which zsh)" ]; then
	echo "zsh not found"
	exit
fi

rm ~/.zshrc
ln -s ~/.dotfiles/zshrc ~/.zshrc
ln -s ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/nanorc ~/.nanorc
mkdir ~/.dotfiles/this-machine
touch ~/.dotfiles/this-machine/zsh
touch ~/.dotfiles/this-machine/tmux.conf

sudo chsh -s "$(which zsh)" $USER

# If private repo is available, add ssh config + hosts
if [ -d "$HOME/.jan" ]; then
    echo "Include ~/.dotfiles/ssh/settings" >> ~/.ssh/config
    echo "Include ~/.jan/ssh_hosts" >> ~/.ssh/config
    chmod 600 ~/.ssh/config
    chmod 600 ~/.jan/ssh_hosts
fi

# Remove old bash files
rm ~/.bashrc
rm ~/.bash_logout

zsh
