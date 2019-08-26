""" VUNDLE_BEGIN
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
`
""" Git plugin
Plugin 'tpope/vim-fugitive'
""" Syntax checker
Plugin 'scrooloose/syntastic'
""" Autocompletion
Plugin 'ervandew/supertab'
""" Status bar
Plugin 'vim-airline/vim-airline-themes'
""" Auto close brackets, quotes, etc.
Plugin 'Raimondi/delimitMate'
""" Auto formatter
Plugin 'Chiel92/vim-autoformat'
""" File nav

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


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

set clipboard=unnamed
set backspace=indent,eol,start

