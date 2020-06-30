# Profile file

# Add to PATH
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.npm-global/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH="/usr/local/go/bin:$PATH"

# Default programs
export FILE="nnn"
export VISUAL="nvim"
export EDITOR="nvim"
export VPN="protonvpn"
export BROWSER="firefox"
export TERMINAL="kitty"
export TERM="xterm-256color"

# Dotfiles
export DOTDIR="$HOME/.config"
export ZDOTDIR="$HOME/.config/zsh"

# nnn
export NNN_BMS='d:~/Documents;D:~/Downloads/;p:~/Pictures'
export NNN_USE_EDITOR=1                                 
export NNN_SSHFS_OPTS="sshfs -o follow_symlinks"

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Android setup
export ANDROID_SDK_ROOT="$HOME/Storage/Android/Sdk"
export ANDROID_HOME="$HOME/Storage/Android/Sdk"
export PATH="$PATH:$ANDROID_HOME/emulator"
export PATH="$PATH:$ANDROID_HOME/tools"
export PATH="$PATH:$ANDROID_HOME/tools/bin"
export PATH="$PATH:$ANDROID_HOME/platform-tools"
