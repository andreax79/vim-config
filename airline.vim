" Airline
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" disable showing a summary of changed hunks under source control
let g:airline#extensions#hunks#enabled = 0
" show current line and column number
let g:airline_section_z=airline#section#create(['%l,%c'])
