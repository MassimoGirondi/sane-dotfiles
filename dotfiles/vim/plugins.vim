if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
"Colorschemes
Plug 'junegunn/seoul256.vim'
Plug 'w0ng/vim-hybrid'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'Rigellute/rigel'
Plug 'jeffkreeftmeijer/vim-dim'
Plug 'dracula/vim'
Plug 'arcticicestudio/nord-vim'


" Markdown tools
Plug 'junegunn/goyo.vim'
Plug 'iamcco/markdown-preview.vim'
Plug 'iamcco/mathjax-support-for-mkdp'
"Plug 'plasticboy/vim-markdown'
"Plug 'junegunn/limelight.vim'

" Must have (sometimes)
"Plug 'ycm-core/YouCompleteMe'
Plug 'ycm-core/YouCompleteMe',  { 'on': ['YcmRestartServer'], 'for': ['python','jvascript','java','c','cpp'] }
"autocmd! User YouCompleteMe YcmRestartServer

Plug 'sheerun/vim-polyglot', { 'on': ['LoadPolyglot'] }
Plug 'rightson/vim-p4-syntax', {'for' : ['p4'] }

Plug 'scrooloose/nerdtree'
" Some nice tpope's plugins
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-tbone'
"Plug 'tpope/vim-sleuth'


" Latex and writing
" Plug 'lervag/vimtex'
" Plug 'kien/ctrlp.vim'
" Plug 'vim-pandoc/vim-pandoc-syntax'
" Plug 'tpope/vim-fugitive'
" Plug 'reedes/vim-pencil'

" vim wiki (better than ORG mode ;))
" Plug 'vimwiki/vimwiki'


" Cool stuff that I don't care about :P
"Plug 'vim-airline/vim-airline'
"Plug 'myusuf3/numbers.vim'
"Plug 'dpelle/vim-LanguageTool'
"Plug 'godlygeek/tabular'
call plug#end()


" " vimwiki settings
" let g:vimwiki_list = [{'path': '~/vimwiki/',
" 			\ 'syntax': 'markdown',
" 			\ 'ext': '.md',
" 			\ 'template_path': '~/vimwiki/templates/',
" 			\ 'template_default': 'default',
" 			\ 'path_html': '~/vimwiki/site_html/',
" 			\ 'custom_wiki2html': 'vimwiki_markdown',
" 			\ 'template_ext': '.tpl'}]
" let g:vimwiki_global_ext = 0


let g:tex_flavor = 'latex'

" Nerdtree
# autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | wincmd p | endif

autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif
autocmd BufWinEnter * silent NERDTreeMirror
" If more than one window and previous buffer was NERDTree, go back to it.
autocmd BufEnter * if bufname('#') =~# "^NERD_tree_" && winnr('$') > 1 | b# | endif

" Ctrlp

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.o,.git/*,.ccache/*     " MacOSX/Linux

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|o)$',
  \ }

let g:ycm_auto_trigger = 0
