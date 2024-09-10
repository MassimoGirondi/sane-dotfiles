"command! MakeCscope !cscope -b
command! MakeCscope ! ack -f --cpp > cscope.files; cscope -b -R -q -k
command! MakeCTags !ctags -R .

if v:version > 703 || v:version == 703 && has("patch541")
  set formatoptions+=j " Delete comment character when joining commented lines
endif

"command! GoodColors set termguicolor | colorscheme rigel | set t_Co=256

fun! Goodcolors( ) "{{{
  set termguicolors
  set t_Co=256
  colorscheme rigel
endfunction "}}}

fun! Defaultcolors ()
  colorscheme dim
  set termguicolors!
endfunction

command! GoodColors call Goodcolors()
command! DefaultColors call Defaultcolors()
command! LoadPolyglot echom "Loading PolyGlot...."
