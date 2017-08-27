" Run python
nnoremap <buffer> <leader>gp :exec '!python' shellescape(@%, 1)<CR>


au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
