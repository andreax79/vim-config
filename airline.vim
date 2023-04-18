" Airline
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" disable showing a summary of changed hunks under source control
let g:airline#extensions#hunks#enabled = 0
" remove the environment status (git) part
let g:airline_section_b=''
" remove the filetype part
let g:airline_section_x=''
" skip encoding if is 'utf-8[unix]'
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
" remove separators for empty sections
let g:airline_skip_empty_sections = 1
" show current line and column number
let g:airline_section_z=airline#section#create(['%l,%c'])
" mode indicator
" let g:airline_mode_map = {
"     \ '__' : '-',
"     \ 'n'  : 'N',
"     \ 'i'  : 'I',
"     \ 'R'  : 'R',
"     \ 'c'  : 'C',
"     \ 'v'  : 'V',
"     \ 'V'  : 'V',
"     \ ''   : 'V',
"     \ 's'  : 'S',
"     \ }
