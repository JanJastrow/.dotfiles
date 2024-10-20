#!/usr/bin/env zsh
set -euo pipefail

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew doctor

#
echo "Installed Homebrew."
read -p "Press any key to continue installing packages"

# Install some default tools
brew update
brew install aria2 bat btop dog eza f3 ffmpeg gping imagemagick iperf3 lsd mosh mozjpeg nano ncdu nmap p7zip pigz rclone rsync screen syncthing telnet tesseract thefuck tldr tmux unzip yt-dlp zstd
brew install --cask balenaetcher calibre cryptomator iina handbrake imageoptim libreoffice losslesscut mgba mkvtoolnix nextcloud rar retroarch-metal secretive signal transmission ultimaker-cura vlc vscodium zed
