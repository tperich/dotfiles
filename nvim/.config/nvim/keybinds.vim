"
"░█░█░█▀▀░█░█░█▀▄░▀█▀░█▀█░█▀▄░█▀▀
"░█▀▄░█▀▀░░█░░█▀▄░░█░░█░█░█░█░▀▀█
"░▀░▀░▀▀▀░░▀░░▀▀░░▀▀▀░▀░▀░▀▀░░▀▀▀
"

" General {{{
let mapleader = "\<space>"
nnoremap <leader> :nohl<CR>
"}}}

" Plugins {{{
nnoremap <C-A-i> :Neoformat<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <F3> :NERDTreeToggle<CR>
nnoremap <F4> :Goyo<CR>
nnoremap <leader>f :ALEFix prettier<CR>
"Plug }}}

" CocJest {{{
command! -nargs=0 Jest :call CocAction('runCommand', 'jest.projectTest')
command! -nargs=0 JestCurrent :call CocAction('runCommand', 'jest.fileTest', ['%'])
"}}}


" Fuzzy find {{{
nnoremap <C-t> :FZF<CR>
"nnoremap <C-f> :Buffers<CR>
" }}}

" Files {{{
" Run files
nnoremap <leader>r :!%:p<CR>

" Open in VSCode (guest mode)
nnoremap <F6> :call OpenInCode(expand("%:p"), line("."), col("."))<CR>
nnoremap <F7> :call OpenInCodeNoVim(expand("%:p"), line("."), col("."))<CR>

""" Open file mappings {{{
nnoremap <leader>oi :e ~/.config/nvim/init.vim<CR>
nnoremap <leader>ok :e ~/.config/nvim/keybinds.vim<CR>
nnoremap <leader>oc :e ~/.config/nvim/commands.vim<CR>
nnoremap <leader>oh :e ~/.config/nvim/helpers.vim<CR>
nnoremap <leader>op :e ~/.config/nvim/plugins.vim<CR>
nnoremap <leadeR>oc :e ~/.config/nvim/plugins_coc.vim<CR>
nnoremap <leader>oo :e ~/.config/nvim/config.vim<CR>
nnoremap <leader>ot :e ~/.config/nvim/theme.vim<CR>
nnoremap <leader>oe :e ~/.config/nvim/templates/<CR>
"}}}

"}}}

" Buffers {{{
nmap gb :bn<CR>
nmap gB :bp<CR>
nmap gD :bd<CR>

nmap <C-T-a>h <C-w>h
nmap <C-T-a>j <C-w>j
nmap <C-T-a>k <C-w>k
nmap <C-T-a>l <C-w>l
"}}}

" Tabs {{{
for i in range(1, 8)
  execute "nnoremap \<A-" . i . "> " . i . "gt"
endfor

nnoremap <A-w> :tabclose<CR>
"}}}

"Stolen from ThePrimeagen {{{
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nnoremap Y yg$
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" greatest remap ever
xnoremap <leader>p "_dP

" next greatest remap ever : asbjornHaland
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG

nnoremap <leader>d "_d
vnoremap <leader>d "_d
"}}}

" HTML {{{
" Jump to next tag
" nnoremap <leader>t :exec "normal />/\<CR\>" | startinsert | call cursor(line('.'), col('.') + 1)
"}}}
