" Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let vundle manage vundle
Plugin 'VundleVim/Vundle.vim'

" list of plugins
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-airline/vim-airline'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'kien/ctrlp.vim'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'Chiel92/vim-autoformat'
Plugin 'mileszs/ack.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'w0rp/ale'
Plugin 'ErichDonGubler/vim-sublime-monokai'
Plugin 'Lokaltog/powerline'
Plugin 'isruslan/vim-es6'
Plugin 'mxw/vim-jsx'
Plugin 'othree/yajs.vim'
Plugin 'Quramy/tsuquyomi'
Plugin 'leafgarland/typescript-vim'
Plugin 'fatih/vim-go'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'Shougo/neocomplete.vim'
"Plugin 'ryanoasis/nerd-fonts'

call vundle#end()

" ----- ale -----
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 1
"highlight ALEError ctermbg=none
highlight ALEError cterm=underline


" ----- CtrlP -----
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist|build)|(\.(swp|ico|git|svn))$'

" ----- neocomplete -----
let g:neocomplete#enable_at_startup = 1

" ----- NERD Tree -----
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden = 1


" ----- vim-airline -----
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'


" ----- vim-autoformat -----
noremap <F3> :Autoformat<CR>

" ----- vim-jsx -----
let g:jsx_ext_required = 0





