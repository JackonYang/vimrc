set nocompatible  " Use Vim defaults instead of 100% vi compatibility

if has("syntax")
    syntax on
endif

if has("autocmd")
    filetype plugin indent on
endif

" 256 color theme molokai
if has('unix')
    set t_Co=256
    colorscheme molokai
    hi Normal  ctermbg=none
elseif has('win32')
    colorscheme desert
endif

set nu
set history=50      " keep 50 lines of command line history

" backspace and cursor keys wrap to previous/next line
set backspace=indent,eol,start whichwrap+=<,>,[,]

if has('mouse')
    set mouse=a
endif

" cut, copy
vnoremap <C-x> "+x
vnoremap <C-c> "+y
" paste in normal/insert/command mode
map <C-v> "+gP
imap <C-v> <C-R>+
cmap <C-v> <C-R>+


" infomative status line
" format, by default, vim does not show the status line at all.
set statusline=%F%m%r%h%w\[FORMAT=%{&ff}]\[TYPE=%Y]\[POS=%04l,%04v][%p%%]\[LEN=%L] 
" always shown, shown as the second last line in the editor window
set laststatus=2 " 

" ------- default settings, redefine it in script settings------
" encoding
set fileencodings=utf-8,gb18030,gbk " open file with
" set encoding=utf-8  " vim cache encoding
" set fileencoding=utf-8 " save file with

" tabs
set tabstop=4 " tab width 
set shiftwidth=4 " width of nested tabs
set expandtab " input spaces instead of tab when typing a tab
set softtabstop=4 " 1. space deleted when typing <BackSpace>
" show tabs
set listchars=tab:>.
set list

" -------------- ctags ----------------
set tags=tags;  " ; 不可省略，表示若当前目录不存在 tags，则在父目录找
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" ---------- python dev env -----------
" autocmd BufWritePost *.py call Flake8()
let g:flake8_max_complexity=10

if has('unix')
    autocmd filetype python map <F5> :!python %<CR>
elseif has('win32')
    autocmd filetype python map <F5> :!python.exe %<CR>
endif

" ---------- cpp dev env ------------------
autocmd filetype cpp map <F7> :!g++ -o main %<CR>
if has('unix')
    autocmd filetype cpp map <F5> :!./main<CR>
elseif has('win32')
    autocmd filetype cpp map <F5> :!main.exe<CR>
endif

autocmd filetype make set noexpandtab
