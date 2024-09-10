filetype on
" enable loading the plugin file for specific file types
filetype plugin on
" enable loading the indent file for specific file types
filetype indent on
filetype plugin indent on


" Settings for specific filetypes
autocmd Filetype python setl et ts=2 sw=2
autocmd BufRead,BufNewFile,BufFilePre *.markdown set filetype=markdown
autocmd BufRead,BufNewFile,BufFilePre *.md       set filetype=markdown
autocmd FileType markdown set spelllang=en_us
autocmd FileType markdown setl spell
autocmd FileType c,cpp,cc,hh,h setlocal equalprg=clang-format
" autocmd FileType p4 setlocal equalprg=clang-format\ --style=file
" autocmd FileType py setlocal equalprg=autopep8\ -
autocmd FileType c,cpp,cc,hh,h setlocal commentstring=//\ %s
"autocmd FileType mail execute "normal /^$<CR>o" | startinsert
" autocmd FileType mail execute ":Fip"
autocmd FileType mkd set nonumber
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0
