" Unite
nnoremap <C-P> : Unite -no-split buffer file_rec<CR>
nnoremap <C-A> : Unite -no-split buffer<CR>
nnoremap <space>s :Unite -quick-match buffer<cr>
nnoremap <space>f :Unite -start-insert file_rec/async<cr>
"unite_exit Search for recently edited files with <Leader>m
nnoremap <silent> <Leader>m :Unite -buffer-name=recent -winheight=10 file_mru<cr>
" Search for Open buffers with <Leader>b
nnoremap <Leader>b :Unite -buffer-name=buffers -winheight=10 buffer<cr>
let g:unite_enable_start_insert = 1
