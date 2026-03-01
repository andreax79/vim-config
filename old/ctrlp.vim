" " CtrlP
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
