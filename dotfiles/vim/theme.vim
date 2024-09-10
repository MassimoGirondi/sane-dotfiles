set ruler

" By default, use rigel color scheme with 256 foced colors


" colorscheme dim
"colorscheme rigel
colorscheme dracula
colorscheme nord
"colorscheme palenight
"colo seoul256

let g:seoul256_background = 233
let g:seoul256_light_background = 256

set termguicolors
syntax enable
" Fix for the colors in vim and tmux
"set background=dark
set t_Co=256


set splitbelow                                          " new hoz splits go below
set splitright                                          " new vert splits go right

match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'        " Highlight merge conflicts
set list listchars=tab:·\ ,trail:≁,nbsp:∝               " Highlight special characters with unicode
set fillchars=vert:│
set showbreak=↪                                         " Mark lines that have been wrapped



