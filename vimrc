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
set number
set nowrap                  " don't wrap lines
set cursorline              " highlight current line
set fillchars+=vert:\       " vertical separator filler
set noerrorbells visualbell t_vb=
set listchars=tab:▸.,trail:.,nbsp:.
set history=1000
set undolevels=1000
set undodir=~/.vim/undodir
" set switchbuf=useopen
set mouse=a                 " Automatically enable mouse usage
if &term =~ '^screen'
  set ttymouse=xterm2       " tmux knows the extended mouse mode
endif
colorscheme summerfruit256

" Force saving files that require root permission
cmap w!! %!sudo tee > /dev/null %

" Turn on wildmenu
set wildmenu

"
" search
set infercase
set ignorecase
set smartcase
set showmatch

map <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>
nnoremap <F4> :execute 'NERDTreeToggle ' . getcwd()<CR>
nnoremap <F5> :GundoToggle<CR>
nnoremap <F8> :TagbarToggle<CR>
nnoremap <silent> <F11> :YRShow<CR>
nnoremap <C-P> : Unite -no-split buffer file_rec<CR>
nnoremap <C-A> : Unite -no-split buffer<CR>
nnoremap <space>s :Unite -quick-match buffer<cr>

" Search for recently edited files with <Leader>m
nnoremap <silent> <Leader>m :Unite -buffer-name=recent -winheight=10 file_mru<cr>
" Search for Open buffers with <Leader>b
nnoremap <Leader>b :Unite -buffer-name=buffers -winheight=10 buffer<cr>
" Shortcut to rapidly toggle `set list` <Leader>l
" nmap <leader>l :set list!<CR>
" Shortcut to rapidly toggle `set paste` <Leader>p
nmap <leader>p :set paste!<CR>

let g:yankring_replace_n_pkey = ''

let g:statline_show_encoding = 0


" Unite
let g:unite_enable_start_insert = 1

" NERDTree
let NERDTreeIgnore = ['\.pyc$', '\.pyo$']

" EasyMotion
let g:EasyMotion_smartcase = 1 " Turn on case sensitive feature
let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_keys = 'abcdefghijklmnopqrstuvwxyz' " Set the keys to be used for motion targets
hi link EasyMotionTarget ErrorMsg
hi link EasyMotionTarget2First ErrorMsg
hi link EasyMotionTarget2Second ErrorMsg
nmap s <Plug>(easymotion-s) " `s{char}{label}` Jump to anywhere you want with minimal keystrokes, with just one key binding.
" nmap s <Plug>(easymotion-s2) " `s{char}{char}{label}` Need one more keystroke, but on average, it may be more comfortable.

" map <Leader>l <Plug>(easymotion-lineforward)
" map <Leader>j <Plug>(easymotion-j)
" map <Leader>k <Plug>(easymotion-k)
" map <Leader>h <Plug>(easymotion-linebackward)
map <Leader><Right> <Plug>(easymotion-lineforward)
map <Leader><Down> <Plug>(easymotion-j)
map <Leader><Up> <Plug>(easymotion-k)
map <Leader><Left> <Plug>(easymotion-linebackward)

" Syntastic
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_python_checkers = ['pyflakes']
let g:syntastic_enable_highlighting = 0
autocmd BufNewFile,BufRead *.json set ft=javascript

" Intellisense
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

" Very Important Buffer
nnoremap <C-B> : VIBToggle<CR>
