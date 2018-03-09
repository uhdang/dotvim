" Vundle
set rtp+=~/.vim/bundle/vundle
call vundle#begin()

" let vundle manage vundle
Plugin 'gmarik/vundle'

" list of plugins - 
" install: vim +PluginInstall or :PluginInstall in vim
" refresh: :source %
Plugin 'scrooloose/nerdtree' " open with :NERDTreeToggle
Plugin 'benmills/vimux'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'vim-airline/vim-airline'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'mxw/vim-jsx'
Plugin 'kien/ctrlp.vim'
Plugin 'isruslan/vim-es6'
Plugin 'leafgarland/typescript-vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'easymotion/vim-easymotion'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'fatih/vim-go'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Quramy/tsuquyomi'
Plugin 'mattn/emmet-vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'airblade/vim-gitgutter'
Plugin 'pangloss/vim-javascript'
Plugin 'Xuyuanp/nerdtree-git-plugin'

Plugin 'danilo-augusto/vim-afterglow'
Plugin 'morhetz/gruvbox'

call vundle#end()
filetype plugin indent on


" THEME & LAYOUT

set number
set hidden "Leave hidden buffers open
set history=100 "by default VIM saves your last 8 commands. We can handle more
syntax on
set term=xterm-256color
set autoindent
set backspace=2 " make backspace work like most other programs
set expandtab
set shiftwidth=2
set softtabstop=2
set mouse=a
set cursorline

" omnicomplete
set completeopt=longest,menuone 
:inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

set nohlsearch " no highlighting on search
" set hlsearch " highlight search results
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

" Buffer Configuration
" Move to the next buffer
nmap <leader>l :bnext<CR>
" Move to the previous buffer
nmap <leader>h :bprevious<CR>
" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>



" ----- Color Theme Config -----

set background=dark
"set termguicolors
colorscheme gruvbox





" ----- CtrlP -----
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist|build)|(\.(swp|ico|git|svn))$'


" ----- gruvbox -----
let g:gruvbox_contrast_dark = 'dark'


" ----- NERD Tree -----
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden = 1

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
    exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
    exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')


" ----- neocomplete-vim -----


" ----- tsuquyomi (typescript) -----




" ----- vim-airline -----
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
let g:airline#extensions#tabline#fnamemod = ':t' " Show just the filename

" ----- vim-autoformat -----



" ----- vim-easymotion -----
map <Leader> <Plug>(easymotion-prefix)
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)
" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)
" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)
" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" ----- vim-gitgutter -----

"let g:gitgutter_eager = 0



" ----- vim-go -----
"let g:go_auto_type_info = 0
"let g:go_list_autoclose = 1



" ----- vim-indent-guides -----
set ts=4 sw=4 et
"let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level =2
let g:indent_guides_guide_size = 1 
