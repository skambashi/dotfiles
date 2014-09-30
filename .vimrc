""" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
""" Vundle mandatory
Plugin 'gmarik/Vundle.vim'
""" Git plugin
Plugin 'tpope/vim-fugitive'
""" Syntax checker
Plugin 'scrooloose/syntastic'
""" Autocompletion
Plugin 'ervandew/supertab'
""" Status bar
Plugin 'bling/vim-airline'
""" Auto close brackets, quotes, etc.
Plugin 'Raimondi/delimitMate'
""" Auto formatter
Plugin 'Chiel92/vim-autoformat'

call vundle#end()

execute pathogen#infect()

filetype plugin indent on

"" Plugin Customization
let g:airline_theme='solarized'
set laststatus=2 " Show airline all the time
set timeoutlen=50 " Speed up leaving insert mode

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_symbols.branch = '⎇'

""" General
set autoindent
set smartindent

set smarttab
set shiftwidth=4
set softtabstop=4
set expandtab
set shiftwidth=4
set expandtab

set number
set showmatch
set cul
set scrolloff=5
set showcmd
set hidden

""" Remap some common annoying errors
ca WQ wq
ca Wq wq
ca W w
ca Q q

""" Move lines up and down with C-j/k
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <ESC>:m .+1<CR>==gi
inoremap <C-k> <ESC>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

""" Always strip strailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

""" Colors
syntax enable
set t_Co=256
set background=dark
colorscheme solarized
"""hi Normal ctermbg=NONE
hi CursorLine term=none cterm=none

""" Splitplane more naturally
set splitbelow
set splitright
