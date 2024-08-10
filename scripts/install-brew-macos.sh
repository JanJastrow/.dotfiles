#!/bin/zsh

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew doctor

# Install some default tools
brew update
brew install tmux mosh eza lsd ffmpeg aria2 bat dog f3 gping btop imagemagick iperf3 ncdu p7zip pigz rclone rsync screen thefuck tldr unzip yt-dlp zstd
brew install --cask balenaetcher cryptomator iina handbrake imageoptim libreoffice losslesscut mgba mkvtoolnix nextcloud obs rar retroarch-metal secretive ultimaker-cura vlc vscodium zed signal transmission