" Vundle
set rtp+=~/.vim/bundle/vundle
call vundle#begin()

" let vundle manage vundle
Plugin 'gmarik/vundle'

" list of plugins -
" install: vim +PluginInstall or :PluginInstall in vim
" refresh: :source %
Plugin 'scrooloose/nerdtree' " open with :NERDTreeToggle
Plugin 'vim-airline/vim-airline'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'mxw/vim-jsx'
Plugin 'kien/ctrlp.vim'
Plugin 'isruslan/vim-es6'
Plugin 'leafgarland/typescript-vim'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'fatih/vim-go'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Quramy/tsuquyomi'
Plugin 'Chiel92/vim-autoformat'
Plugin 'pangloss/vim-javascript'
Plugin 'Xuyuanp/nerdtree-git-plugin'

call vundle#end()
filetype plugin indent on


" THEME & LAYOUT

set number
highlight LineNr ctermfg=grey
set hidden "Leave hidden buffers open
set history=100 "by default VIM saves your last 8 commands. We can handle more
"syntax on
set autoindent
set backspace=2 " make backspace work like most other programs
set expandtab
set shiftwidth=2
set softtabstop=2
set mouse=a
set autoread

set nohlsearch " no highlighting on search
set incsearch " incremental searching

" Store temporary files in a central spot
let vimtmp = $HOME . '/.tmp/' . getpid()
silent! call mkdir(vimtmp, "p", 0700)
let &backupdir=vimtmp
let &directory=vimtmp

" Buffer Configuration
" Move to the next buffer
nmap <leader>l :bnext<CR>
" Move to the previous buffer
nmap <leader>h :bprevious<CR>
" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>


" ----- CtrlP -----
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist|build)|(\.(swp|ico|git|svn))$'


" ----- NERD Tree -----
map <C-n> :NERDTreeToggle<CR>
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"let NERDTreeShowHidden = 1


" ----- vim-airline -----
let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
let g:airline#extensions#tabline#fnamemod = ':t' " Show just the filename

" ----- vim-jsx -----
let g:jsx_ext_required = 0

