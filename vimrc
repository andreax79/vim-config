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
set cursorline

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
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|pyc|pyo|class)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

map <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>
nnoremap <F4> :execute 'NERDTreeToggle ' . getcwd()<CR>
nnoremap <F5> :GundoToggle<CR>
nnoremap <F6> :MRUToggle<CR>
nnoremap <F11> :set list!<CR>

" To save, ctrl-s.
" nmap <c-s> :w<CR>
" imap <c-s> <Esc>:w<CR>a

colorscheme lucius
set fillchars+=vert:\ 

" :set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
:set statusline=%<%f\ %y\ %h%m%r%=%-24.(F4.NERDTree\ \ F5.Gundo\ \ F6.Recent\ \ F11.Inv\ \ F12.Mouse\ \ %4l,%-4c%)\ %P
" :set statusline=%f\ Line:%l/%L\ [%p%%]\ Col:%v\ Buf:#%n\ [%b][0x%B]


" Intellisense
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
"inoremap <A-space> <C-x><C-o>

inoremap <expr> <A-Space> pumvisible() \|\| &omnifunc == '' ?
            \ "\<lt>C-n>" :
            \ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
            \ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
            \ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"

let g:EasyGrepCommand=1
let g:EasyGrepRecursive=1
let g:EasyGrepSearchCurrentBufferDir=1
let g:EasyGrepIgnoreCase=1
let g:EasyGrepFilesToExclude='*.pyc,*.pyo,.svn,.git'
