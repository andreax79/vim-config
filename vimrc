execute pathogen#infect()
syntax on
filetype plugin indent on

set nocompatible

set background=dark         " Assume a dark background

" tab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab               " insert space characters whenever the tab key is pressed
set smarttab

set textwidth=0
set backspace=indent,eol,start
set hidden
set suffixes=.bak,~,.swp,.o,.pyc,.pyo
set encoding=utf-8
set whichwrap=b,s,h,l
set directory=~/tmp,/tmp,.
set ruler

" search
set infercase
set ignorecase
set smartcase
set showmatch

set history=1000
set undolevels=1000
"set laststatus=2
"set pastetoggle=<F9>
set number
"map Q gq

set mouse=a                 " Automatically enable mouse usage"
set noerrorbells visualbell t_vb=

set nowrap                  " don't wrap lines

" shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
set listchars=tab:▸.,trail:.,nbsp:.
set list

set undodir=~/.vim/undodir

map <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>
