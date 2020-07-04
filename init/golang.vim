autocmd FileType go set noexpandtab
autocmd FileType go set nolist

function! OnGoSave()
    :GoMetaLinter
endfunction

autocmd BufWritePre *.go :call OnGoSave()

let g:go_fmt_command = "goimports"
au Filetype go nnoremap <leader>gd :vsp <CR>:exe "GoDef" <CR>
au Filetype go nnoremap <leader>gr :GoRun %<CR>
" au FileType go nmap <Leader>gc <Plug>(go-coverage)
au FileType go nmap <Leader>gc :GoCoverageToggle -short<CR>

au FileType go nmap <Leader>gi <Plug>(go-implements)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <Leader>ge <Plug>(go-rename)
au FileType go nmap <Leader>ml <Plug>(go-metalinter)

au Filetype go nnoremap <leader>gg :GoDeclsDir<CR>

au FileType go nmap <Leader>dt :DlvTest<CR>
au FileType go nmap <Leader>db :DlvAddBreakpoint<CR>
au FileType go nmap <Leader>dc :DlvClearAll<CR>

"let g:syntastic_go_checkers = "gofmt"

" let g:go_highlight_functions = 1
" let g:go_highlight_methods = 1
" let g:go_highlight_structs = 1
" let g:go_highlight_interfaces = 1
" let g:go_highlight_operators = 1
" let g:go_highlight_build_constraints = 1

let g:go_auto_type_info = 1

augroup go
  autocmd!
  autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
  autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
  autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
augroup END

let g:go_metalinter_deadline = "5s"
let g:go_metalinter_enabled = [
    \ 'deadcode',
    \ 'errcheck',
    \ 'gas',
    \ 'goconst',
    \ 'gocyclo',
    \ 'golint',
    \ 'gosec',
    \ 'gosimple',
    \ 'govet',
    \ 'ineffassign',
    \ 'interfacer',
    \ 'megacheck',
    \ 'misspell',
    \ 'nakedret',
    \ 'structcheck',
    \ 'unconvert',
    \ 'unparam',
    \ 'varcheck',
    \ 'vet',
    \ 'vetshadow'
\]
