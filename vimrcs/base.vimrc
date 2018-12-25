" ===================================================
"                       GENERAL 
" ===================================================


" sets how many lines of history VIM has to remember
set history=500

" Enable filetype plugins
filetype plugin on 
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" Set mapleader as '\' key
let mapleader = "\\"

" Display 
set number

" Ignore case when searching"
set ignorecase

" When searching try to be smart about cases
set smartcase

" Show matching brackets when text indicator over them
set showmatch

" remap control + c as copy to clipboard
vmap <C-c> "+y

" always show current position
set ruler

" prevents vim from re-tabbing
set nopaste

" buffer config
nnoremap bl :bnext<CR>
nnoremap bh :bprev<CR>
nnoremap bq :bp <BAR> bd #<CR>

" tab config
"set showtabline=2
"nnoremap tn :tabnew<Space>
"nnoremap tk :tabnext<CR>
"nnoremap tj :tabprev<CR>
"nnoremap th :tabfirst<CR>
"nnoremap tl :tablast<CR>


" Using python3 for powerline
let g:powerline_pycmd = "py3"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 1 tab == 4 spaces
set tabstop=4
set shiftwidth=4

" Linebreak on 500 characters
set lbr
set tw=500

set expandtab "On pressing tab, insert 4 spaces
set smarttab "Smart tabs
set ai "Auto indent
set si "Smart indent



" enable syntax highlighting
syntax on

" Store temporary files in a central spot
let vimtmp = $HOME . '/.tmp/' .getpid()
silent! call mkdir(vimtmp, "p", 0700)
let &backupdir=vimtmp
let &directory=vimtmp

" toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  => Color, Theme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme sublimemonokai

set termguicolors " Enable true color support.
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" guifont
set guifont=Font\ Awesome\ 14
set encoding=UTF-8
