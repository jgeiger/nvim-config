let g:rg_command = '
  \ rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --color "always"
  \ --glob "\!*.{min.js,swp,o,zip}"
  \ --glob "\!{.git,node_modules}/*"
  \ --glob "\!{.vendor/**/*}"
  \ --glob "*.{js,json,php,md,styl,css,jade,html,haml,config,py,cpp,c,go,hs,rb,conf,rs}" '

command! -bang -nargs=* F call fzf#vim#grep(g:rg_command .shellescape(<q-args>), 1, <bang>0)

let g:fzf_action = {
    \ 'ctrl-t': 'tab split',
    \ 'ctrl-s': 'split',
    \ 'ctrl-v': 'vsplit' }

let g:fzf_layout = { 'down': '~20%' }
