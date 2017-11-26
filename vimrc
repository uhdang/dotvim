" Vundle
set rtp+=~/.vim/bundle/vundle
call vundle#begin()

" let vundle manage vundle
Plugin 'gmarik/vundle'

" list of plugins - install: vim +PluginInstall or :PluginInstall in vim
Plugin 'scrooloose/nerdtree' " open with :NERDTreeToggle
Plugin 'benmills/vimux'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'w0rp/ale' " ALE (Asynchronous Lint Engine) is a plugin for providing linting
Plugin 'vim-airline/vim-airline'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'mxw/vim-jsx'
Plugin 'danilo-augusto/vim-afterglow'
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'kien/ctrlp.vim'
Plugin 'isruslan/vim-es6'
Plugin 'morhetz/gruvbox'
Plugin 'leafgarland/typescript-vim'
Plugin 'terryma/vim-multiple-cursors'

call vundle#end()
filetype plugin indent on


" THEME & LAYOUT 

set number
set hidden "Leave hidden buffers open
set history=100 "by default VIM saves your last 8 commands. We can handle more
syntax on
set background=dark
set autoindent
set backspace=2 " make backspace work like most other programs
set expandtab
set shiftwidth=2
set softtabstop=2
colorscheme gruvbox

" Searching
set hlsearch " highlight matches
set incsearch " incremental searching

" disable arrow keys
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

" Store temporary files in a central spot
let vimtmp = $HOME . '/.tmp/' . getpid()
silent! call mkdir(vimtmp, "p", 0700)
let &backupdir=vimtmp
let &directory=vimtmp


" ALE - :help ale-fix
let g:ale_completion_enabled = 1
let g:ale_fixers = {'javascript': ['eslint'], 'typescript': ['tslint']}
let g:airline#extensions#ale#enabled = 1
nmap <F8> <Plug>(ale_fix) " Bind F8 to fixing problems with ALE

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'

" gruvbox
let g:gruvbox_contrast_dark = 'dark'

" NERD Tree
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" vim-airline
let g:airline_powerline_fonts = 1

" vim-jsx


