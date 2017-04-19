" Vundle Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" a universal set of defaults that (hopefully) everyone can agree on
Plugin 'tpope/vim-sensible'
Plugin 'tomtom/tcomment_vim'
" Plugin 'Raimondi/delimitMate'

" Colorschemes
Bundle 'flazz/vim-colorschemes'
Bundle 'altercation/vim-colors-solarized'
Bundle 'vim-airline/vim-airline-themes'
" Bundle 'chriskempson/base16-vim'

" Gundo.vim is Vim plugin to visualize your Vim undo tree.
Plugin 'sjl/gundo.vim'

" Ack integration
Plugin 'mileszs/ack.vim'

" Syntax checking
Plugin 'scrooloose/syntastic'

" Airline
Plugin 'bling/vim-airline'

" Text filtering and alignment
Plugin 'godlygeek/tabular'

" Vim motions on speed!
Plugin 'Lokaltog/vim-easymotion'

" Motion through CamelCase words with ',w', ',b' and ',e'
Plugin 'bkad/CamelCaseMotion'

" Text object representing lines of code at the same indent level - Vii, <count>ai
Plugin 'michaeljsmith/vim-indent-object'

" Maintains a history of previous yanks, changes and deletes
Plugin 'vim-scripts/YankRing.vim'

" Quoting/parenthesizing made simple
Plugin 'tpope/vim-surround'

" NERDTree
Plugin 'scrooloose/nerdtree'
Plugin 'tyok/nerdtree-ack'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" " Unite
" Plugin 'unite.vim'
" Plugin 'Shougo/vimproc.vim'
" " file explorer implemented for unite
" Plugin 'Shougo/vimfiler.vim'
" " useful interface for version control for unite
" Plugin 'hrsh7th/vim-versions'
" " Plugin 'Shougo/vimshell.vim'

" Ctrlp
Plugin 'ctrlpvim/ctrlp.vim'
" cmdline/yankring/menu
Plugin 'sgur/ctrlp-extensions.vim'
" A simple function navigator for ctrlp.vim
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'mattn/ctrlp-register'

" Git
Plugin 'tpope/vim-fugitive'
Plugin 'int3/vim-extradite'

" snipMate.vim aims to be a concise vim script that implements some of TextMate's snippets features in Vim
Plugin 'tomtom/tlib_vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'magarcia/vim-angular2-snippets'

" Very Important Buffers
Plugin 'andreax79/very-important-buffers.vim'

" Languages
Plugin 'pangloss/vim-javascript'
Plugin 'leafgarland/typescript-vim'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'mxw/vim-jsx'
Plugin 'othree/html5.vim'

" Vim indenter for standalone and embedded JavaScript and TypeScript
Plugin 'jason0x43/vim-js-indent'

" Highlight/trim all trailing whitespace characters (spaces and tabs) - :StripWhiteSpaces, :ToggleWhiteSpaces
Plugin 'ntpeters/vim-better-whitespace'

" Multiple selections
Plugin 'terryma/vim-multiple-cursors'

" Quick close another window (e.g. Qj means close lower window and go back )
Plugin 'andreax79/quit-another-window'

" Easy text exchange operator for Vim - cx and cxx
Plugin 'tommcdo/vim-exchange'

" Automatically set background on local sunrise/sunset time
Plugin 'andreax79/sunset'

" Register trigger on save
Plugin 'andreax79/vim-on-write'

" Open a file in a given line, e.g. vim index.html:20
" Plugin 'bogado/file-line'

" Press - in any buffer to hop up to the directory listing and seek to the file you just came from
Plugin 'tpope/vim-vinegar'

" Preview colours in source code while editing
Plugin 'ap/vim-css-color'

