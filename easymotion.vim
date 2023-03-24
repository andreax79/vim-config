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
