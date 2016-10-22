set nocompatible              " be iMproved, required
filetype off                  " required

"YCM
let g:ycm_global_ycm_extra_conf = '~/.config/vim/bundle/plugins/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

" set the runtime path to include Vundle and initialize
if has('win32') || has('win64') 
    " use this for windows
    set rtp+=~/vimfiles/bundle/Vundle.vim/
    let path='~/vimfiles/bundle'
else
    " use this for nix 
    set rtp+=~/.config/vim/bundle/Vundle.vim/
    let path='~/.config/vim/bundle/plugins'
endif

call vundle#begin(path)
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'terryma/vim-smooth-scroll'

Plugin 'LaTeX-Suite-aka-Vim-LaTeX'

"color schemes
Plugin 'nanotech/jellybeans.vim'
"Plugin 'altercation/vim-colors-solarized'
"Plugin 'whatyouhide/vim-gotham'
"Plugin 'jonathanfilip/vim-lucius'
"Plugin 'vim-scripts/xoria256.vim'
call vundle#end()            " required
filetype plugin indent on    " required


"""" KEYMAPPINGS """"
" Tab mappings
nnoremap <silent> <C-Left> :tabprevious<CR>
nnoremap <silent> <C-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>

" move line mappings
nnoremap <silent>  <A-j> :m .+1<CR>==
nnoremap <silent>  <A-k> :m .-2<CR>==
inoremap <silent>  <A-j> <Esc>:m .+1<CR>==gi
inoremap <silent>  <A-k> <Esc>:m .-2<CR>==gi
vnoremap <silent>  <A-j> :m '>+1<CR>gv=gv
vnoremap <silent>  <A-k> :m '<-2<CR>gv=gv

" Latex
" .tex loads latex doc
let g:tex_flavor='latex' 

" NERDTree
nnoremap <silent> <F2> :NERDTreeToggle<CR>

"Buffers
nnoremap <silent> <F5> :buffers<CR>:buffer<Space>

"Search Highlighting
set hlsearch
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

"Smooth scroll
noremap <silent> <C-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <C-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <C-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <C-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

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

"Apperance
colorscheme jellybeans
let g:airline_theme='jellybeans'
let g:airline_powerline_fonts = 1
syntax enable
if has('gui_running')
    "set guioptions-=m  "remove menu bar
    "set guioptions-=T  "remove toolbar
endif

if has('win32') || has('win64') 
    set guifont=Consolas:h11
else
    if has('gui_running')
        set guifont=Consolas\ 10
    else
        set guifont=Consolas\ 11
        set t_Co=256
    endif
endif

if has('mouse')
    set mouse=a
endif


"dirs / swap
if has('win32') || has('win64') 
    silent execute ':!mkdir "~\vimfiles\tmp\backup"'
    silent execute ':!mkdir "~\vimfiles\tmp\swap"'
    silent execute ':!mkdir "~\vimfiles\tmp\undo"'
    set backupdir=~/vimfiles/backup//
    set directory=~/vimfiles/swap//
    set undodir=~/vimfiles/undo//
else
    silent execute '!mkdir -p $HOME/.config/vim/backup'
    silent execute '!mkdir -p $HOME/.config/vim/swap'
    silent execute '!mkdir -p $HOME/.config/vim/undo'
    set backupdir=~/.config/vim/backup//
    set directory=~/.config/vim/swap//
    set undodir=~/.config/vim/undo//
endif

