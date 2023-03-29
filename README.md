# Dotfiles Repository

This is a collection of my personal dotfiles for various applications that I use. These dotfiles are designed to work on Linux-based operating systems. The repository includes configuration files for the following applications:

- [awesome](https://awesomewm.org/): A dynamic window manager for X.
- [compton](https://github.com/chjj/compton): A compositor for X11.
- [i3](https://i3wm.org/): A tiling window manager for X.
- [kitty](https://sw.kovidgoyal.net/kitty/): A fast, feature-rich, GPU-based terminal emulator.
- [nnn](https://github.com/jarun/nnn): A terminal-based file manager.
- [neovim](https://neovim.io/): A fork of the Vim editor focused on extensibility and usability.
- [polybar](https://github.com/polybar/polybar): A fast and easy-to-use status bar.
- [sxhkd](https://github.com/baskerville/sxhkd): A simple X hotkey daemon.
- [tmux](https://github.com/tmux/tmux/wiki): A terminal multiplexer.
- [zsh](https://www.zsh.org/): A powerful shell with numerous features and options.

## Installation

To use these dotfiles, you can clone this repository to your home directory:

```
git clone https://github.com/tperich/dotfiles.git ~/dotfiles
```

You can then use gnu-stow to stow these all at once:
```
cd dotfiles && stow -S *
```

Or you can can symlink the individual dotfiles to their appropriate locations in your home directory. For example, to symlink the zsh configuration file:

```
ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc
```

You may need to adjust the paths and filenames based on your own system and preferences.

## Usage

Once you have installed the dotfiles, you can use the various applications as you normally would. Some of them are designed to auto-install missing plugins, themes, etc. The dotfiles may include custom keybindings, color schemes, and other settings that you may find useful. Refer to the individual files for more information.
