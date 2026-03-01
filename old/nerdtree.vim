" NERDTree
let NERDTreeIgnore = ['\.pyc$', '\.pyo$', '^__pycache__$']
nmap <silent> <Leader>n :NERDTreeToggle<CR>
let g:NERDTreeMouseMode = 3 " Open files/folder with a single click
" open NerdTree when you're starting vim with no command line arguments
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" let g:NERDTreeDirArrowExpandable='|'
" let g:NERDTreeDirArrowCollapsible='+'

" function! NERDTreeCustomOpen(node)
"     call a:node.activate({'reuse': 0, 'where': 'p'})
" endfunction
"
" call NERDTreeAddKeyMap({
"             \ 'key': 'o',
"             \ 'scope': "FileNode",
"             \ 'callback': "NERDTreeCustomOpen",
"             \ 'override': 1 })
"
