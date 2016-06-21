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
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'bling/vim-airline'
Plugin 'MarcWeber/vim-addon-local-vimrc'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'

"color schemes
Plugin 'nanotech/jellybeans.vim'
"Plugin 'altercation/vim-colors-solarized'
"Plugin 'whatyouhide/vim-gotham'
"Plugin 'jonathanfilip/vim-lucius'
"Plugin 'vim-scripts/xoria256.vim'



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

"""" KEYMAPPINGS """"
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

" NERDTree
nnoremap <F2> :NERDTreeToggle<CR>

"Buffers
nnoremap <F5> :buffers<CR>:buffer<Space>

"Highlight stuff
set hlsearch
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

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
syntax enable
if has('gui_running')
    set guioptions-=m  "remove menu bar
    set guioptions-=T  "remove toolbar
    colorscheme jellybeans
else
    colorscheme jellybeans
endif


if has('win32') || has('win64') 
    set guifont=Consolas:h11
else
    if has('gui_running')
        set guifont=Consolas\ 10
    else
        set guifont=Consolas\ 11
        set t_Co=256
    end
end

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
