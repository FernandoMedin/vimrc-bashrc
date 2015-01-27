set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"Plugins"
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/dbext.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'bling/vim-airline'
Plugin 'Shougo/vimshell.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'Toggle-NERDTree-width'

"Colorschemes"
Plugin 'jpo/vim-railscasts-theme'
Plugin 'w0ng/vim-hybrid'
Plugin 'cocopon/iceberg.vim'
Plugin 'cesardeazevedo/Fx-ColorScheme'
Plugin 'smeggingsmegger/vim-colorschemes'

call vundle#end()
filetype plugin indent on
"filetype plugin on

set clipboard=unnamedplus
set nobackup
set nowritebackup
set noswapfile
set encoding=ISO-8859-1
set fileencoding=ISO-8859-1
set number
set shiftwidth=4
set tabstop=4
autocmd vimenter * NERDTree
let NERDTreeDirArrows=0
syntax enable
set guioptions-=m
set guioptions-=T
colorscheme fx
set background=dark
set colorcolumn=80
set expandtab

map <F5> :set filetype=python<CR>
map <F6> :set filetype=html<CR>
map <F7> :set filetype=sql<CR>
map <F8> :set filetype=javascript<CR>
