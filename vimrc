set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
source ~/.vim/bundles.vim
call vundle#end()

filetype plugin indent on   " required

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

set cursorline              " Highlight current line

" shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
nmap <leader>p :set paste!<CR>
set listchars=tab:▸.,trail:.,nbsp:.
" set list

set undodir=~/.vim/undodir
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|pyc|pyo|class)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

map <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>
nnoremap <F4> :execute 'NERDTreeToggle ' . getcwd()<CR>
nnoremap <F5> :GundoToggle<CR>
nnoremap <F8> :TagbarToggle<CR>
" nnoremap <F11> :set list!<CR>
nnoremap <silent> <F11> :YRShow<CR>
"nmap <c-p> :CtrlP<CR>
nnoremap <C-P> : Unite buffer file_rec<CR>
nnoremap <C-A> : Unite buffer<CR>
nnoremap <space>s :Unite -quick-match buffer<cr>
noremap <Leader>a :Ack<CR>

" To save, ctrl-s.
" nmap <c-s> :w<CR>
" imap <c-s> <Esc>:w<CR>a

" set background=dark         " Assume a dark background
" colorscheme lucius
colorscheme summerfruit256
set fillchars+=vert:\ 

":set statusline+=%-24.(F4.NERDTree\ \ F5.Gundo\ \ F11.Inv\ \ F12.Mouse\ \ %4l,%-4c%)\ %P

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

let NERDTreeIgnore = ['\.pyc$', '\.pyo$']

let g:unite_enable_start_insert = 1
let g:yankring_replace_n_pkey = ''

let g:miniBufExplModSelTarget = 1
let g:statline_show_encoding = 0

let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_python_checkers = ['pyflakes']
let g:syntastic_enable_highlighting = 0

" Bi-directional find motion
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-s)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-s2)

" EasyMotion
let g:EasyMotion_smartcase = 1 " Turn on case sensitive feature
let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_keys = 'abcdefghijklmnopqrstuvwxyz' " Set the keys to be used for motion targets

map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
map <Leader><Right> <Plug>(easymotion-lineforward)
map <Leader><Down> <Plug>(easymotion-j)
map <Leader><Up> <Plug>(easymotion-k)
map <Leader><Left> <Plug>(easymotion-linebackward)

hi link EasyMotionTarget ErrorMsg
hi link EasyMotionTarget2First ErrorMsg
hi link EasyMotionTarget2Second ErrorMsg

autocmd BufNewFile,BufRead *.json set ft=javascript


