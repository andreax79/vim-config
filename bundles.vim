" Vim-Plug Brief help
" :PlugInstall [name ...] - Install plugins
" :PlugUpdate [name ...]  - Install or update plugins
" :PlugClean[!]           - Remove unused directories (bang version will clean without prompt)
" :PlugUpgrade            - Upgrade vim-plug itself

" a universal set of defaults that (hopefully) everyone can agree on
Plug 'tpope/vim-sensible'
" Plug 'Raimondi/delimitMate'

" Airline
Plug 'vim-airline/vim-airline'

" Colorschemes
" Plug 'flazz/vim-colorschemes'
" Plug 'altercation/vim-colors-solarized'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'chriskempson/base16-vim'
" Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'arcticicestudio/nord-vim'

" Gundo.vim is Vim plugin to visualize your Vim undo tree.
" Plug 'sjl/gundo.vim'

" Ack integration
" Plug 'mileszs/ack.vim'

" Syntax checking
Plug 'scrooloose/syntastic'

" Text filtering and alignment
Plug 'godlygeek/tabular'

" Motion through CamelCase words with ',w', ',b' and ',e'
" Plug 'bkad/CamelCaseMotion'

" Text object representing lines of code at the same indent level - Vii, <count>ai
Plug 'michaeljsmith/vim-indent-object'

" Maintains a history of previous yanks, changes and deletes
Plug 'vim-scripts/YankRing.vim'

" Quoting/parenthesizing made simple
Plug 'tpope/vim-surround'

" " Unite
" Plug 'unite.vim'
" Plug 'Shougo/vimproc.vim'
" " file explorer implemented for unite
" Plug 'Shougo/vimfiler.vim'
" " useful interface for version control for unite
" Plug 'hrsh7th/vim-versions'
" " Plug 'Shougo/vimshell.vim'

" Ctrlp
" Plug 'ctrlpvim/ctrlp.vim'
" cmdline/yankring/menu
" Plug 'sgur/ctrlp-extensions.vim'
" A simple function navigator for ctrlp.vim
" Plug 'tacahiroy/ctrlp-funky'
" Plug 'mattn/ctrlp-register'

" Git
Plug 'tpope/vim-fugitive'
Plug 'int3/vim-extradite'
Plug 'airblade/vim-gitgutter'

" UltiSnips - The ultimate snippet solution for Vim
" Plug 'SirVer/ultisnips'
" SnipMate
" Plug 'MarcWeber/vim-addon-mw-utils'
" Plug 'tomtom/tlib_vim'
" Plug 'garbas/vim-snipmate'
" Snippets
" Plug 'honza/vim-snippets'
"
" Very Important Buffers
" Plug 'andreax79/very-important-buffers.vim'

" Languages
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'ekalinin/Dockerfile.vim'
Plug 'mxw/vim-jsx'
Plug 'othree/html5.vim'
" Vim indenter for standalone and embedded JavaScript and TypeScript
Plug 'jason0x43/vim-js-indent'
"  Generate Python docstring to your Python script file
Plug 'heavenshell/vim-pydocstring'

" Highlight/trim all trailing whitespace characters (spaces and tabs) - :StripWhiteSpaces, :ToggleWhiteSpaces
Plug 'ntpeters/vim-better-whitespace'

" Multiple selections
Plug 'terryma/vim-multiple-cursors'

" Quick close another window (e.g. Qj means close lower window and go back )
Plug 'andreax79/quit-another-window'

" Easy text exchange operator for Vim - cx and cxx
Plug 'tommcdo/vim-exchange'

" Automatically set background on local sunrise/sunset time
" Plug 'andreax79/sunset'

" Register trigger on save
Plug 'andreax79/vim-on-write'

" Open a file in a given line, e.g. vim index.html:20
" Plug 'bogado/file-line'

" Press - in any buffer to hop up to the directory listing and seek to the file you just came from
Plug 'tpope/vim-vinegar'

" Preview colours in source code while editing
Plug 'ap/vim-css-color'

" This plugin provides the following mappings which allow you to move between
" Vim panes and tmux splits seamlessly.
Plug 'christoomey/vim-tmux-navigator'

" repeat.vim: enable repeating supported plugin maps with "."
Plug 'tpope/vim-repeat'

" ZFZ Integration
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

if has('nvim')
    " Neovim only ------------------------------------------------------------

    " Neo-Tree
    Plug 'MunifTanjim/nui.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-neo-tree/neo-tree.nvim'
    " NvimTree
    " Plug 'nvim-tree/nvim-tree.lua'
    " Plug 'nvim-tree/nvim-web-devicons

    " Leap is general-purpose motion plugin
    " Initiate the search in the forward (s) or backward (S) direction, or in the other windows (gs)
    Plug 'ggandor/leap.nvim'

    Plug 'echasnovski/mini.nvim'

else
    " Vim only ---------------------------------------------------------------

    Plug 'tomtom/tcomment_vim'

    " NERDTree
    Plug 'scrooloose/nerdtree'
    " Plug 'tyok/nerdtree-ack'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'ryanoasis/vim-devicons'

    " Vim motions on speed!
    Plug 'Lokaltog/vim-easymotion'
endif
