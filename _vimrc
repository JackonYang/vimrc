set nocompatible        " Use Vim defaults instead of 100% vi compatibility

if has("syntax")
    syntax on
endif

if has("autocmd")
    filetype plugin indent on
endif

" backspace and cursor keys wrap to previous/next line
set backspace=indent,eol,start whichwrap+=<,>,[,]

" tabs
set tabstop=4 " tab width 
set shiftwidth=4 " width of nested tabs

if has('mouse')
    set mouse=a
endif

" cut, copy
vnoremap <C-x> "+x
vnoremap <C-c> "+y
" paste in normal/insert/command mode
map <C-v> "+gP
imap <C-v> <Esc>"+gPa
cmap <C-v> <C-R>+
