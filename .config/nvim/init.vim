"
"░█▀█░█▀▀░█▀█░█░█░▀█▀░█▄█
"░█░█░█▀▀░█░█░▀▄▀░░█░░█░█
"░▀░▀░▀▀▀░▀▀▀░░▀░░▀▀▀░▀░▀
"

set nocompatible            " Diable old-time vi compatibility
set hidden                  " Keep buffers on abandon
set mouse=a                 " Enable mouse usage
set shell=zsh               " Set shell to zsh
set showmatch               " Show matching brackets
set expandtab               " Converts tabs to white space
set autoindent              " Keep indentation size on newlines
set ignorecase              " Case insensitive matching
set nomodeline              " Disable modelines (CVE-2019-12735)
set splitright              " Open splits on right
set scrolloff=5             " Set scrolloffset to 5
set tabstop=4               " Tab length
set shiftwidth=4            " Width for autoindents
set softtabstop=4           " See multiple spaces as tabstops
set colorcolumn=80          " Set column border
set updatetime=300          " Prevent performance delays
set foldmethod=marker       " Fold on markers
set wildmode=longest,list   " Get bash-like tab completions
set number relativenumber   " Relative line numbers with current
filetype plugin indent on   " Set filetype and indent on file change

" Disable auto comments everywhere
autocmd FileType * setlocal formatoptions-=cro
autocmd FileType typescript set colorcolumn=120

" Source {{{
" Plugins
source $HOME/.config/nvim/plugins.vim

" Plugins config
source $HOME/.config/nvim/config.vim

" Keybindings
source $HOME/.config/nvim/keybinds.vim

" Custom commands
source $HOME/.config/nvim/commands.vim

" Helper functions
source $HOME/.config/nvim/helpers.vim

" Theme
source $HOME/.config/nvim/theme.vim
"}}}
