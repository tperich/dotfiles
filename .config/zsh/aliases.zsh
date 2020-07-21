# ~/.config/zsh/aliases.zsh
#
# ░█▀█░█░░░▀█▀░█▀█░█▀▀░█▀▀░█▀▀
# ░█▀█░█░░░░█░░█▀█░▀▀█░█▀▀░▀▀█
# ░▀░▀░▀▀▀░▀▀▀░▀░▀░▀▀▀░▀▀▀░▀▀▀

# Shell commands
# ls command
if command -v lsd > /dev/null; then
    alias l="lsd -1 --color --group-dirs=first"
    alias ls="lsd"
    alias ll="lsd -l --group-dirs=first"
    alias la="lsd -A --group-dirs=first"
    alias lll="lsd -Al --group-dirs=first"
    alias lls="lsd -Al --group-dirs=first --total-size --sizesort"
    alias peek="lsd -Al --color=always --group-dirs=first | less -r"
else
    alias l="ls -1 --color --group-directories-first"
    alias ls="ls --color --group-directories-first"
    alias ll="l -l"
    alias la="l -A"
    alias lll="l -Ali"
fi

# Other commands
alias cp="cp -v"
alias rm="rm -v"

# Moving around
alias ~="cd ~"
alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../../"
alias d="dirs"

# Directories
alias cc="cd ~/code"
alias ccw="cd ~/code/web"
alias ccp="cd ~/code/python"
alias ccd="cd ~/code/dotfiles"
alias ccl="cd ~/code/lowlevel"
alias ccm="cd ~/code/mobile"
alias ccv="cd ~/code/virt"
alias cds="cd ~/scripts"
alias cdd="cd ~/Downloads"
alias cmds="cd /media/$USER/Storage"
alias cmde="cd /media/$USER/Secondary"
alias cciw="cd ~/code/web/itiv/vpn-frontend"
alias ccib="cd ~/code/web/itiv/vpn-brain-php"

# Repos
alias cca="cd ~/code/web/activecollab"
alias ccaw="cd ~/code/web/activecollab"
alias ccam="cd ~/code/mobile/activecollab-mobile"
alias ccamt="cd ~/code/mobile/test-activecollab-mobile"
alias ccaq="cd ~/code/mobile/qr2reg-mobile"

# Config directories
alias c.i="cd ~/.config/i3"
alias c.z="cd ~/.config/zsh"
alias c.v="cd ~/.config/nvim"
alias c.p="cd ~/.config/polybar"
alias c.s="cd ~/.config/sxhkd"
alias c.t="cd ~/.config/tmux"

# Git
alias glom="git pull origin master"
alias glum="git pull upstream master"
alias gloh="git pull origin HEAD"
alias gpoh="git push origin HEAD"

# Tmux
alias tma="tmux a"
alias tml="tmux ls"
alias tmks="tmux kill-server"

# Tmux scripts
alias startvpn="~/scripts/tmux/vpn.sh"
alias stopvpn="sudo killall openvpn && tmux kill-session -t vpn"
alias startmobile="~/scripts/tmux/mobile.sh"

# Utility
alias wttr="curl wttr.in/novi+sad"
alias wttrk="curl wttr.in/cologne"
alias fdate="date +\"%d_%m_%Y_%I_%M_%p\""
alias inet="hostname -I | cut -d' ' -f1"
alias boing="nohup mplayer ~/Music/Sounds/a_tone.mp3 > /dev/null 2>&1"
alias john="$HOME/.local/bin/johntheripper/john"

# Binaries
if command -v nvim > /dev/null; then
	alias vim="nvim"
fi
alias dmenu="dmenu_run -nb \"$color0\" -nf \ 
    \"$color15\" -sb \"$color1\" -sf \"$color15\""

### Config & source files
# Config
alias exp="$EDITOR $HOME/.xprofile"
alias erc="$EDITOR $ZDOTDIR/zshrc"
alias eal="$EDITOR $ZDOTDIR/aliases.zsh"
alias evc="$EDITOR $DOTDIR/nvim/"
alias evr="$EDITOR $DOTDIR/nvim/init.vim"
alias ei3="$EDITOR $DOTDIR/i3/config"
alias esx="$EDITOR $DOTDIR/sxhkd/sxhkdrc"
# Root
alias serc="sudo -u root -H $EDITOR /etc/resolv.conf"

# Source files
alias src="source $ZDOTDIR/zshrc"
alias sal="source $ZDOTDIR/aliases.zsh"

# SSH
if command -v mosh > /dev/null; then
    alias cs="mosh station"
else
    alias cs="ssh station"
fi

# Clipboard
alias xclipb="xclip -sel clip"

# Vim
alias :w="cowsay \"You're not in vim jackass\""
alias :q="cowsay \"You're not in vim jackass\""
alias :x="cowsay \"You're not in vim jackass\""

# VPN
alias pvpn="sudo $VPN"
alias proton="sudo $VPN"
alias getip="python3 $HOME/scripts/other/getip"

# Unalias zsh's aliases
if command -v _ > /dev/null; then
    unalias _
fi
