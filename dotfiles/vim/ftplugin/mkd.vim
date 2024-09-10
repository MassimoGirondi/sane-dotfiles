"au! BufRead,BufNewFile *.markdown set filetype=mkd
"au! BufRead,BufNewFile *.md       set filetype=mkd
setlocal autoindent
setlocal colorcolumn=0
setlocal linebreak
setlocal nonumber
setlocal shiftwidth=4
setlocal spell
setlocal tabstop=4
setlocal wrap
setlocal syntax=markdown
setlocal spelllang=en_us
":NumbersToggle
" Disable the autogroup: dummmies method :)
"augroup numbertoggle
"  autocmd!
"augroup END

