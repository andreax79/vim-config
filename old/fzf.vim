
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

function! Ag(args, b)
    " If no pattern is provided, search for the word under the cursor
    let l:grep_args = empty(a:args) ? expand("<cword>") : a:args . join(a:000, ' ')
    " Bypass search for blank searches
    if l:grep_args == ""
    echo "No regular expression found."
        return
    endif
    call fzf#vim#grep(
    \   'ag --nogroup --column --color '.l:grep_args, 0,
    \   fzf#vim#with_preview(), a:b)
endfunction

command! -bang -nargs=* -complete=file Ag call Ag(<q-args>, <bang>0)
