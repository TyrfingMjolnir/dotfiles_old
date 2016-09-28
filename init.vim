syntax on
filetype plugin indent on

" spaces instead of tabs
set autoindent
set backspace=indent,eol,start
set complete-=i
set smarttab
set tabstop=2
set shiftwidth=2
set expandtab

set encoding=utf-8
set number

" Plugins
call plug#begin('~/.vim/plugged')

" General
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'benekastah/neomake'
Plug 'Shougo/deoplete.nvim'
Plug 'altercation/vim-colors-solarized'
Plug 'ervandew/supertab'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'Shougo/neosnippet.vim'
call plug#end()

" Neomake
" autocmd! BufWritePost * Neomake

" Deoplete
" let g:deoplete#enable_at_startup=1

silent! nmap <C-p> :NERDTreeToggle<CR>
silent! map <F2> :NERDTreeToggle<CR>
silent! map <C-o> :NERDTreeFind<CR>
let g:NERDTreeToggle="<F2>"
let g:NERDTreeMapActivateNode="<F3>"
let g:NERDTreeMapPreview="<F4>"
