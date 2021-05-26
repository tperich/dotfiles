# ~/.config/zsh/installers.zsh
#
# ░▀█▀░█▀█░█▀▀░▀█▀░█▀█░█░░░█░░░█▀▀░█▀▄░█▀▀
# ░░█░░█░█░▀▀█░░█░░█▀█░█░░░█░░░█▀▀░█▀▄░▀▀█
# ░▀▀▀░▀░▀░▀▀▀░░▀░░▀░▀░▀▀▀░▀▀▀░▀▀▀░▀░▀░▀▀▀

# Install LSD (next gen ls command)
if ! command -v lsd > /dev/null && uname -s | grep "Linux"; then
    echo "[+] Installing LSD..."
    curl -L --silent https://github.com/Peltoche/lsd/releases/download/0.16.0/lsd_0.16.0_amd64.deb -o /tmp/lsd.deb
    sudo dpkg -i /tmp/lsd.deb
    rm /tmp/lsd.deb
fi
