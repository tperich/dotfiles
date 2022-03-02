"
"░█▀█░█░░░█░█░█▀▀░▀█▀░█▀█░█▀▀
"░█▀▀░█░░░█░█░█░█░░█░░█░█░▀▀█
"░▀░░░▀▀▀░▀▀▀░▀▀▀░▀▀▀░▀░▀░▀▀▀
"

" Install Vim Plug {{{
" if not installed
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif
"}}}

" Plug plugins {{{
call plug#begin()

" Vim related
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'christoomey/vim-tmux-navigator'
Plug 'jlanzarotta/bufexplorer'
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-repeat'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'michaeljsmith/vim-indent-object'

" Code related
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'SirVer/ultisnips'
Plug 'mattn/emmet-vim'
Plug 'sbdchd/neoformat'
Plug 'posva/vim-vue'
Plug 'dense-analysis/ale'
Plug 'leafgarland/typescript-vim'
Plug 'fatih/vim-go'
Plug 'noahfrederick/vim-skeleton'

" Syntax
Plug 'pangloss/vim-javascript'
Plug 'kovetskiy/sxhkd-vim'
Plug 'ianks/vim-tsx'
Plug 'mxw/vim-jsx'
Plug 'leafgarland/typescript-vim'

" Misc
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

" Color schemes
Plug 'dylanaraps/wal.vim'
Plug 'gosukiwi/vim-atom-dark'
Plug 'drewtempelmeyer/palenight.vim'

call plug#end()
"}}}

" Plugins config {{{

" Fix fzf
packadd fzf

" Deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#enable_camel_case = 1
let g:deoplete#enable_refresh_always = 1
let g:deoplete#max_abbr_width = 0
let g:deoplete#max_menu_width = 0
let g:deoplete#omni#input_patterns = get(g:,'deoplete#omni#input_patterns',{})

" Ultisnips
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsSnippetDirectories = ['~/.config/nvim/UltiSnips/']
let g:python_host_prog = "/usr/bin/python"
let g:python3_host_prog = "/usr/bin/python3"

" Skeleton
let g:skeleton_template_dir = "~/.config/nvim/templates"

" Nvim CoC
source $HOME/.config/nvim/plugins_coc.vim

" Syntax
autocmd BufRead *.ts[x] :set syntax=javascript.tsx

" Emmet
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}
"}}}

