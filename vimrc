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

" disable left scrollbar in MacVim
set guioptions-=L

" colorscheme summerfruit256
" colorscheme lucius
" colorscheme hybrid
" colorscheme molokai " (7/2016)
" colorscheme solarized " (4/2017)

let g:solarized_termcolors=16 " f you've loaded the solarized color palette

" Automatically set background on local sunrise/sunset time
let g:sunset_latitude = 45.46
let g:sunset_longitude = 9.18

function! s:Day()
    set background=light
    colorscheme solarized
endfunction

fun! s:Night()
    set background=dark
    colorscheme solarized
endfunction

command! Day call s:Day()
command! Night call s:Night()

" Daytime color scheme
function! Sunset_daytime_callback()
    call s:Day()
endfunction

" Night color scheme
function! Sunset_nighttime_callback()
    call s:Night()
endfunction

" Force saving files that require root permission
cmap w!! %!sudo tee > /dev/null %

" Save with W
command! W  write

" Turn on wildmenu
set wildmenu

" search
set infercase
set ignorecase
set smartcase
set showmatch

nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>g :GundoToggle<CR>
nmap <leader>y :YRShow<CR>
nmap <leader>m :ToggleMouse<CR>

" Toggle mouse
fun! s:ToggleMouse()
    if !exists("s:old_mouse")
        let s:old_mouse = "a"
    endif

    if &mouse == ""
        let &mouse = s:old_mouse
        echo "Mouse is for Vim"
    else
        let s:old_mouse = &mouse
        let &mouse=""
        echo "Mouse is for terminal"
    endif
endfunction
command! ToggleMouse call s:ToggleMouse()

" Unite
" nnoremap <C-P> : Unite -no-split buffer file_rec<CR>
" nnoremap <C-A> : Unite -no-split buffer<CR>
" nnoremap <space>s :Unite -quick-match buffer<cr>
" nnoremap <space>f :Unite -start-insert file_rec/async<cr>
" "unite_exit Search for recently edited files with <Leader>m
" nnoremap <silent> <Leader>m :Unite -buffer-name=recent -winheight=10 file_mru<cr>
" " Search for Open buffers with <Leader>b
" nnoremap <Leader>b :Unite -buffer-name=buffers -winheight=10 buffer<cr>
" let g:unite_enable_start_insert = 1

" CtrlP
let g:ctrlp_mruf_default_order = 0 " disable sorting
let g:ctrlp_mruf_default_order = 0 " working directory
" let g:ctrlp_cmd = 'call CallCtrlP()'
let g:ctrlp_cmd = 'CtrlPMRU'
let g:ctrlp_extensions = ['yankring', 'cmdline']

func! CallCtrlP()
    if exists('s:called_ctrlp')
        CtrlPLastMode --dir
    else
        let s:called_ctrlp = 1
        CtrlPMRU
    endif
endfunc

" Shortcut to rapidly toggle `set list` <Leader>l
nmap <leader>l :set list!<CR>
" Shortcut to rapidly toggle `set paste` <Leader>p
nmap <leader>p :set paste!<CR>

let g:yankring_replace_n_pkey = ''

" Airline
let g:airline_powerline_fonts = 1
set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h11

" NERDTree
let NERDTreeIgnore = ['\.pyc$', '\.pyo$']
nmap <silent> <Leader>n :NERDTreeToggle<CR>
let g:NERDTreeMouseMode = 3 " Open files/folder with a single click

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
let g:syntastic_json_checkers=['jsonlint']
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

" Define the command 'ReloadVimrc'
command! ReloadVimrc so $MYVIMRC

" Command line Emacs-style movement keys
cnoremap <C-a>  <Home>
cnoremap <C-b>  <Left>
cnoremap <C-f>  <Right>
cnoremap <C-d>  <Delete>
cnoremap <M-b>  <S-Left>
cnoremap <M-f>  <S-Right>
cnoremap <M-d>  <S-right><Delete>
cnoremap <Esc>b <S-Left>
cnoremap <Esc>f <S-Right>
cnoremap <Esc>d <S-right><Delete>
cnoremap <C-g>  <C-c>

" Use The Silver Searcher with Ack.vim
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" function! NERDTreeCustomOpen(node)
"     call a:node.activate({'reuse': 0, 'where': 'p'})
" endfunction
"
" call NERDTreeAddKeyMap({
"             \ 'key': 'o',
"             \ 'scope': "FileNode",
"             \ 'callback': "NERDTreeCustomOpen",
"             \ 'override': 1 })

set shortmess+=l

" hide ~ (non text)
":hi NonText guifg=bg
