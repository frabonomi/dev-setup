set nocompatible
execute pathogen#infect()
filetype plugin indent on
syntax on

set guifont=Ubuntu\ Mono:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

if has("gui_running")
   let s:uname = system("uname")
   if s:uname == "Darwin\n"
      set guifont=Inconsolata\ for\ Powerline:h15
   endif
endif

set laststatus=2
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set relativenumber number 

map <C-n> :NERDTreeToggle<CR>
