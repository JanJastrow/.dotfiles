#!/bin/sh

if [ ! -x `which zsh` ]; then
	exit
fi

rm ~/.zshrc
ln -s ~/.dotfiles/zshrc ~/.zshrc
ln -s ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf
touch ~/.dotfiles/zsh/device-specific
sudo chsh -s $(which zsh) $USER

# If private repo is available, add ssh config + hosts
if [ -d $HOME/.jan ]; then
    echo "Include ~/.dotfiles/ssh/settings" >> ~/.ssh/config
    echo "Include ~/.jan/ssh_hosts" >> ~/.ssh/config
    chmod 600 ~/.ssh/config
    chmod 600 ~/.jan/ssh_hosts
fi

# Remove old bash files
rm ~/.bashrc
rm ~/.bash_logout
rm ~/.bash_history

zsh
