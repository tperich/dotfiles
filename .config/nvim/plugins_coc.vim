"
" ░█▀▀░█▀█░█▀▀
" ░█░░░█░█░█░░
" ░▀▀▀░▀▀▀░▀▀▀

let g:coc_global_extensions = [
    \"coc-tslint-plugin",
    \"coc-tsserver",
    \"coc-emmet",
    \"coc-css",
    \"coc-html",
    \"coc-json",
    \"coc-yank",
    \"coc-prettier"
    \]

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" use <c-space>for trigger completion
inoremap <silent><expr> <c-space> coc#refresh()

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)<Paste>
