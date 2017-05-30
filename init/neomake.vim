autocmd! BufWritePost *.rb Neomake
autocmd! BufWritePost *.go Neomake

let g:neomake_open_list = 1
let g:neomake_airline = 1

let g:neomake_go_enabled_makers = ['go']
