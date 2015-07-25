"dirs / swap
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize

" use this for linux
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" use this for windows
"set rtp+=~/vimfiles/bundle/Vundle.vim/
"let path='~/vimfiles/bundle'
"call vundle#begin(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'MarcWeber/vim-addon-local-vimrc'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'

call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Tab mappings
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>

" move line mappings
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

"Apperance
syntax enable
set background=dark
if has('gui_running')
    colorscheme solarized
else
    colorscheme desert
endif

set number
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set laststatus=2
set autoindent
set backspace=indent,eol,start
set ruler
set showcmd
set colorcolumn=80
set autochdir
if has('gui_win32')
    set guifont=Consolas:h11:cANSI
    "set guifont=ProggyClean:h12
    set guioptions-=m   " remove menu bar
    set guioptions-=T   " remove toolbar
endif
if has('mouse')
    set mouse=a
endif


"dirs / swap
"use this for linux
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
"use this for windows
"set backupdir=~/vimfiles/backup//
"set directory=~/vimfiles/swap//
"set undodir=~/vimfiles/undo//
