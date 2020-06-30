"
"░█░█░█▀▀░█░░░█▀█░█▀▀░█▀▄░█▀▀
"░█▀█░█▀▀░█░░░█▀▀░█▀▀░█▀▄░▀▀█
"░▀░▀░▀▀▀░▀▀▀░▀░░░▀▀▀░▀░▀░▀▀▀
"

" Open a file in VSCode {{{
" Open in VSCode
function! OpenInCode(...)
    let filepath = get(a:, 1, expand("%:p"))
    let line = get(a:, 2, 0)
    let column = get(a:, 3, 0)
    let coords = line . ":" . column
    let cmd = "code " . " --goto " . filepath . ":" . coords

    call system(cmd)
endf

" Open in VSCode with vim extension disabled.
function! OpenInCodeNoVim(...)
    let filepath = get(a:, 1, expand("%:p"))
    let line = get(a:, 2, 0)
    let column = get(a:, 3, 0)
    let coords = line . ":" . column

    let cmd_base = "code --disable-extension vscodevim.vim"
    let cmd = cmd_base . " --goto " . filepath . ":" . coords

    call system(cmd)
endf
"}}}

" Create a new markdown note {{{
" Create a new note in ~/Documents/notes/[category]/<year>/<month>/
function! NewNote(...)
    let title = get(a:, 1, "")
    let category = get(a:, 2, "Misc")

    let day_num = systemlist("date +%d")[0]
    let year_num = systemlist("date +%Y")[0]
    let month_name = systemlist("date +%B")[0]
    let time_uuid = systemlist("uuidgen -t | cut -d '-' -f1")[0]

    let base_path = $HOME . "/Documents/notes/" . category
    let full_path = base_path . "/" . year_num . "/" . month_name

    if len(title)
        let title = title . "-"
    endif

    if !isdirectory(full_path)
        call mkdir(full_path, "p")
    endif

    let filename = title . day_num . "-" . time_uuid . ".md"
    execute("edit " . full_path . "/" . filename)
endfunction
"}}}

" Compile Markdown to PDF {{{
function! MarkdownToPDF()
    let path = expand("%:h")
    let base_filename = expand("%:t:r")
    let s_file = path . "/" . base_filename . ".md"
    let t_file = path . "/" . base_filename . ".pdf"
    call system("pandoc -o " . t_file . " " . s_file . " && pkill -HUP mupdf")
endfunction
"}}}

" Compile LaTeX to PDF {{{
function! LatexToPDF()
    let path = expand("%:h")
    let base_filename = expand("%:t:r")
    let oldfile = path . "/" . base_filename . ".tex"
    let newfile = path . "/" . base_filename . ".pdf"
    call system("pandoc -f latex -o " . t_file . " " . s_file . 
                \ " && pkill -HUP mupdf")
endfunction
"}}}

" Autocmd on files.
" autocmd BufWritePost *.md :call MarkdownToPDF()
" autocmd BufWritePost *.tex :call LatexToPDF()

autocmd BufRead *.js[x] :set syntax=javascript
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx
