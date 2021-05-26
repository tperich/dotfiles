# ~/.config/zsh/helpers.zsh
#
# ░█░█░█▀▀░█░░░█▀█░█▀▀░█▀▄░█▀▀
# ░█▀█░█▀▀░█░░░█▀▀░█▀▀░█▀▄░▀▀█
# ░▀░▀░▀▀▀░▀▀▀░▀░░░▀▀▀░▀░▀░▀▀▀

# Quick command cheatsheet
cheat() {
    curl -s cheat.sh/$1 | less
}
