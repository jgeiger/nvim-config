autocmd! BufWritePost * Neomake

let g:neomake_open_list = 1
" let g:neomake_airline = 1

function! neomake#makers#ft#go#EnabledMakers()
  " return ['go', 'golint', 'govet']
  return ['go', 'govet']
endfunction
