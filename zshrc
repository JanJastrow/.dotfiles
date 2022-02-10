#--------------------------------
# filename:     /zshrc
#--------------------------------

autoload -Uz promptinit && promptinit
autoload -U compinit && compinit

# Default prompt design (color)
prompt fade red

# Load zsh settings
source $HOME/.dotfiles/zsh/settings

# Define platform
platform='Unknown'
if [[ $(uname) == 'Linux' ]]; then
   platform='Linux'
elif [[ $(uname) == 'Darwin' ]]; then
   platform='macOS'
fi
arch='Unknown'
if [[ $(uname -p) == 'arm' ]]; then
    arch="arm"
elif [[ $(uname -p) == 'i386' ]]; then
    arch="i386"
elif [[ $(uname -p) == 'x86_64' ]]; then
    arch="x86_64"
fi

# Load additional settings
source $HOME/.dotfiles/zsh/env
source $HOME/.dotfiles/zsh/alias
source $HOME/.dotfiles/zsh/bindings
source $HOME/.dotfiles/zsh/scripts
source $HOME/.dotfiles/zsh/ffmpeg
source $HOME/.dotfiles/zsh/device-specific

# Addons addons

## NNotes
nnotesaddon="$HOME/.nnotes/.zsh-integration"
if [[ -f $nnotesaddon ]]; then
	source $nnotesaddon
fi
