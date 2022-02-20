#--------------------------------
# filename:     /zshrc
#--------------------------------

autoload -Uz promptinit && promptinit
autoload -U compinit && compinit

# Prompt color
prompt_color1="#ffaf00"
primpt_color2="#000000"

# Load zsh settings
source $HOME/.dotfiles/zsh/settings

# Define platform
platform='Unknown'
if [[ $(uname) == 'Linux' ]]; then
   platform='Linux'
elif [[ $(uname) == 'Darwin' ]]; then
   platform='macOS'
fi

# Define CPU architecture
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

# Prompt design
prompt="%F{$prompt_color2}%K{$prompt_color1} ▓▒░%F%B%n@%m%b%F{$prompt_color1}%K{$prompt_color2}█▓▒░%F{#ffffff}%K{$prompt_color2}%B %D{%Y-%m-%d} %D{%k:%M:%S}
%}%F{$prompt_color1}%K{$prompt_color2}%B%~/%b%k%f "

# Load private information from second repo
if [[ -d $HOME/.jan ]]; then
    source $HOME/.jan/credentials
    source $HOME/.jan/zsh_options
fi
