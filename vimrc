set nocompatible

" vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')
source ~/.vim/bundles.vim
call plug#end()

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
set timeoutlen=500
" let g:mapleader = "\<Space>"
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
" set switchbuf=useopen
set mouse=a                 " Automatically enable mouse usage
if &term =~ '^screen'
  set ttymouse=xterm2       " tmux knows the extended mouse mode
endif

" Airline
source ~/.vim/airline.vim

" let g:nord_uniform_status_lines = 0

" hide left scrollbar, menu, and toolbar in gui
set guioptions-=m
set guioptions-=L
set guioptions-=T
" default: set guioptions=aegimrtT

" colorscheme summerfruit256
" colorscheme lucius
" colorscheme hybrid
" colorscheme molokai " (7/2016)
" colorscheme solarized " (4/2017)
" let g:solarized_termcolors=16 " f you've loaded the solarized color palette
" let base16colorspace=256  " Access colors present in 256 colorspace
" colorscheme base16-one-light
" let g:dracula_colorterm = 0
set termguicolors
" colorscheme dracula_bold
colorscheme nord " (7/2022)

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

let g:yankring_replace_n_pkey = ''

" Fix SnipMate version 0 deprecation "The legacy SnipMate parser is deprecated."
let g:snipMate = { 'snippet_version' : 1 }

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

" Enable automatic running of :RustFmt when you save a buffer
" The :RustFmt command will format your code with rustfmt if installe)
let g:rustfmt_autosave = 1

" Very Important Buffer
" nnoremap <C-B> : VIBToggle<CR>

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
" if executable('ag')
"   let g:ackprg = 'ag --vimgrep'
" endif

set shortmess+=l

" hide ~ (non text)
":hi NonText guifg=bg

" Open buffers
nmap <leader>b :Buffers<CR>
" Files
nmap <leader>f :Files<CR>
" File history
nmap <leader>h :History<CR>
" Git commits for the current buffer
nmap <leader>c :BCommits<CR>
" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
" Shortcut to rapidly toggle `set paste`
nmap <leader>p :set paste!<CR>
" nmap <leader>g :GundoToggle<CR>
nmap <leader>y :YRShow<CR>
" Toggle mouse
nmap <leader>m :ToggleMouse<CR>

nnoremap <C-B> : Buffers<CR>
nnoremap <C-P> : History<CR>

if has("gui_running")
    set guifont=Andale\ Mono
    set background=dark
    colorscheme dracula_bold
    inoremap <C-v> <ESC>"+pa
    vnoremap <C-c> "+y
    vnoremap <C-d> "+d
endif

function! Preview(args, ...)
  if filereadable(a:args)
    let l:source = 'bat --plain --color=always '.a:args
  else
    let l:source = 'ls -lah --color=always '.a:args
  endif
  call fzf#run({
  \ 'source': l:source,
  \ 'sink': 'edit '.a:args.'"',
  \ 'options': '--ansi --layout=reverse-list --prompt "['.a:args.']> "',
  \ 'window': {'width': 0.9, 'height': 0.9, 'border': 'rounded'}
  \})
endfunction

command! -bang -nargs=1 Preview call Preview(<q-args>, <bang>0)

if has('nvim')
    " Neovim only ------------------------------------------------------------

    " Neo Tree
    :lua require('neo_tree')

    " Leap is general-purpose motion plugin
    " Initiate the search in the forward (s) or backward (S) direction, or in the other windows (gs)
    :lua require('leap').add_default_mappings()

    command! -bang -nargs=* Ag
      \ call fzf#vim#grep(
      \   'ag --nogroup --column --color '.<q-args>, 0,
      \   fzf#vim#with_preview(), <bang>0)

    " autocmd StdinReadPre * let s:std_in=1
    " autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | e . | endif

else
    " Vim only ---------------------------------------------------------------

    " NERDTree
    source ~/.vim/nerdtree.vim

    " EasyMotion
    source ~/.vim/easymotion.vim

endif
