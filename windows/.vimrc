"set nocindent
"set nosmartindent
"set noautoindent
"set indentexpr=
"filetype indent off
"filetype plugin indent off
syntax on
set ruler
set backspace=indent,eol,start
set number
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif
