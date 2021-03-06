if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

function! Cond(cond, ...)
	let opts = get(a:000, 0, {})
	return a:cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction

call plug#begin('~/.config/nvim/plugged')

"
" Colorschemes
"
Plug 'chriskempson/base16-vim'

"
" General Editing
"
" Plug 'tpope/vim-repeat'
" Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
" Plug 'kana/vim-textobj-user'
" Plug 'Julian/vim-textobj-variable-segment'
" Plug 'kana/vim-textobj-line'
" Plug 'thinca/vim-textobj-between'
Plug 'tpope/vim-unimpaired'
" Plug 'sjl/gundo.vim'
" Plug 'godlygeek/tabular'
" Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'mgamba/j-split'
" Plug 'matt-royal/diffthese'
" Plug 'camelcasemotion'
" Plug 'brysgo/quickfixfix'
" Plug 'Lokaltog/vim-easymotion'
" Plug 'regreplop.vim'
" Plug 'Peeja/insert_mode_background_color'
" Plug 'vim-scripts/L9'
" Plug 'MarcWeber/vim-addon-mw-utils'
" Plug 'tomtom/tlib_vim'
" Plug 'garbas/vim-snipmate'
" Plug 'jszakmeister/vim-togglecursor'
" Plug 'editorconfig/editorconfig-vim'
" Plug 'Shougo/neocomplete.vim'
" Plug 'Shougo/neosnippet.vim'
" Plug 'Shougo/neosnippet-snippets'

" Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'AndrewRadev/splitjoin.vim'

Plug 'benekastah/neomake', Cond(has('nvim'))

" Plug 'christoomey/vim-system-copy'
" Plug 'Valloric/YouCompleteMe'
" Plug 'ervandew/supertab'

Plug 'neoclide/coc.nvim', { 'branch': 'master', 'do': { -> coc#util#install() } }
" Plug 'neoclide/coc-snippets', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-prettier', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-tslint', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-tslint-plugin', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-css', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-yaml', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-stylelint', {'do': 'yarn install --frozen-lockfile'}

"
" Searching
"
Plug 'mileszs/ack.vim'
" Plug 'tpope/vim-abolish'
" Plug 'henrik/vim-qargs'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'burke/matcher', {'do' : 'make && make install'}
" Plug 'Shougo/unite.vim'
" Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

"
" Navigation
"
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
" Plug 'craigemery/vim-autotag'

"
" Languages
"
Plug 'fatih/vim-go', { 'for': 'go', 'do': ':GoInstallBinaries' }
" Plug 'jodosha/vim-godebug', { 'for': 'go' } " Debugger integration via delve
Plug 'sebdah/vim-delve', { 'for': 'go' } " Debugger integration via delve

Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'tpope/vim-endwise', { 'for': 'ruby' }

" Plug 'markcornick/vim-hashicorp-tools'
Plug 'pangloss/vim-javascript', {'for': 'javascript'}
Plug 'styled-components/vim-styled-components', { 'for': ['javascript', 'typescript', 'typescript.tsx'],  'branch': 'main'}
Plug 'HerringtonDarkholme/yats.vim', { 'for': 'typescript' }
Plug 'jparise/vim-graphql', {'for': ['graphql', 'javascript', 'typescript']}

Plug 'plasticboy/vim-markdown'
Plug 'kchmck/vim-coffee-script'
Plug 'tpope/vim-haml'
Plug 'uarun/vim-protobuf'
Plug 'ekalinin/Dockerfile.vim'
Plug 'elzr/vim-json'
Plug 'vim-scripts/indentpython.vim'
" Plug 'ecomba/vim-ruby-refactoring'
" Plug 'nelstrom/vim-textobj-rubyblock'
" Plug 'jgdavey/vim-blockle'
" Plug 'mxw/vim-jsx'
" Plug 'slim-template/vim-slim'
" Plug 'nono/vim-handlebars'
" Plug 'tpope/vim-cucumber'
" Plug 'mustache/vim-mustache-handlebars'
" Plug 'rosstimson/scala-vim-support'
" Plug 'guns/vim-clojure-static'
" Plug 'chrisbra/csv.vim'
" Plug 'elixir-lang/vim-elixir'
" Plug 'jimenezrick/vimerl'
" Plug 'toml-lang/toml'
" Plug 'slashmili/alchemist.vim'
" For doc highlighting in alchemist.vim
" Plug 'powerman/vim-plugin-AnsiEsc.git'
" Plug 'lucidstack/hex.vim'
" Plug 'mattreduce/vim-mix'

"
" Development Tool Integration
"
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'janko-m/vim-test'
Plug 'jgdavey/tslime.vim'
" Plug 'tjennings/git-grep-vim'
" Plug 'tpope/vim-dispatch'
" Plug 'carlobaldassi/ConqueTerm'
" Plug 'sjl/vitality.vim'

" Add plugins to &runtimepath
call plug#end()

runtime! init/**.vim
