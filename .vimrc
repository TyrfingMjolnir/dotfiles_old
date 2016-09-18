nnoremap ; :
nnoremap : ;

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using git URL
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-repeat'
Plug 'edsono/vim-matchit'

Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'leafgarland/typescript-vim'
Plug 'powerline/powerline'

" Optional:
Plug 'honza/vim-snippets'

Plug 'nathanaelkane/vim-indent-guides'

call plug#end()

filetype plugin on
filetype indent on

autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS

set number
set relativenumber
set numberwidth=2

function! SetFileEncUnicode()
  set fileencoding=utf-8
endfunc

function! NumberToggle()
  set relativenumber!
endfunc

function! PrintLandscapeToFileA4()
:set printoptions = portrait:n paper:A4
:hardcopy >~/expand('%:t')<C-R>=strftime("%Y%M%D-%H%i%s")
endfunc

nnoremap <C-n> :call NumberToggle()<cr>
nnoremap <C-u> :call SetFileEncUnicode()<cr>
nnoremap <C-p> :call PrintLandscapeToFileA4()<cr>

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

syntax enable
" set showcmd


colorscheme desert
set background=dark

set ruler

set cmdheight=2

set encoding=utf-8

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

set shiftwidth=2
set tabstop=2

set pastetoggle=<f5>

set ts=2 sw=2 et
let g:indent_guides_start_level=2

hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey

set laststatus=2

set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

set noswapfile
set nobackup
set nowritebackup
set nopaste

autocmd FileType php  set omnifunc=phpcomplete#CompletePHP
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType js   set omnifunc=javascriptcomplete#CompleteJS

" Highlight JSON like Javascript
au BufNewFile,BufRead *.json set ft=javascript

" make python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
au FileType python setl softtabstop=2 shiftwidth=2 tabstop=2 textwidth=90 expandtab
au FileType rst setl textwidth=80

" PHP settings
au FileType php setl textwidth=120 softtabstop=2 shiftwidth=2 tabstop=2 noexpandtab

" Javascript settings
au FileType javascript setl textwidth=120 softtabstop=2 shiftwidth=2 tabstop=2 noexpandtab

map <C-o> :NERDTreeToggle<CR>
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
