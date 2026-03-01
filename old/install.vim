set nocompatible
" Neovim
if has('nvim')
    set runtimepath^=~/.vim runtimepath+=~/.vim/after
    let &packpath=&runtimepath
endif
" vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')
source ~/.vim/bundles.vim
call plug#end()
