set backspace=indent,eol,start
map <Tab> <C-W>w
map <Bar> <C-W>v<C-W><Right>
map -     <C-W>s<C-W><Down>


noremap <C-w>+ :resize +5<CR>
noremap <C-w>- :resize -5<CR>
noremap <C-w>< :vertical:resize -5<CR>
noremap <C-w>> :vertical:resize +5<CR>

nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>

" Fat fingers :P
command Wq wq
command WQ wq
command W w
command Q q
nnoremap Q <nop>
map <F1> <Esc>
imap <F1> <Esc>
