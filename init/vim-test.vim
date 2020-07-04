let g:test#strategy = "tslime"

let g:tslime_always_current_session = 1
let g:tslime_always_current_window = 0

let test#go#gotest#options = { "nearest": "-v" }

" Run tests
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>A :TestSuite<CR>
nmap <silent> <leader>tt :TestLast<CR>
nmap <silent> <leader>tv :TestVisit<CR>

function! DebugNearest()
  let g:test#go#runner = "delve"
  TestNearest
  unlet g:test#go#runner
endfunction
nmap <silent> <leader>td :call DebugNearest()<CR>
