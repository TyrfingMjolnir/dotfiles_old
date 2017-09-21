set nocompatible
set autowrite

nnoremap j gj
nnoremap k gk

nnoremap ; :
nnoremap : ;

" SNIPPETS:
" https://youtu.be/XA2WjJbmmoM?t=39m46s
" : enter command mode
" <CR> from command mode: execute and return to normal mode

inoremap <Space><Space> <Esc>/<++><Enter>"_c4l

nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>G
nnoremap ,cfor :-1read $HOME/.vim/.skeleton.cfor.c<CR>5j11l
nnoremap ,sfor :-1read $HOME/.vim/.skeleton.sfor.swift<CR>1j
nnoremap ,cwhile :-1read $HOME/.vim/.skeleton.cwhile.c<CR>
nnoremap ,nojs :-1read $HOME/.vim/.skeleton.node.js<CR>/fs<CR>
nnoremap ,php :-1read $HOME/.vim/.skeleton.php<CR>\?><CR>
nnoremap ,sh :-1read $HOME/.vim/.skeleton.sh<CR>2j10la
nnoremap ,cggt :-1read $HOME/.vim/.copyright.ggt.txt<CR>\?><CR>

"""HTML
autocmd FileType html inoremap ;b <b></b><Space><++><Esc>FbT>i
autocmd FileType html inoremap ;i <em></em><Space><++><Esc>FeT>i
autocmd FileType html inoremap ;1 <h1></h1><Enter><Enter><++><Esc>2kf<i
autocmd FileType html inoremap ;2 <h2></h2><Enter><Enter><++><Esc>2kf<i
autocmd FileType html inoremap ;3 <h3></h3><Enter><Enter><++><Esc>2kf<i
autocmd FileType html inoremap ;p <p></p><Enter><Enter><++><Esc>02kf>a
autocmd FileType html inoremap ;a <a<Space>href=""><++></a><Space><++><Esc>F"i
autocmd FileType html inoremap ;ul <ul><Enter><li></li><Enter></ul><Enter><Enter><++><Esc>03kf<i
autocmd FileType html inoremap ;li <Esc>o<li></li><Esc>F>a
autocmd FileType html inoremap ;ol <ol><Enter><li></li><Enter></ol><Enter><Enter><++><Esc>03kf<i
"""END

""".md
autocmd Filetype markdown inoremap ;b ****<Space><++><Esc>F*hi
autocmd Filetype markdown inoremap ;s ~~~~<Space><++><Esc>F~hi
autocmd Filetype markdown inoremap ;e **<Space><++><Esc>F*i
autocmd Filetype markdown inoremap ;h ====<Space><++><Esc>F=hi
autocmd Filetype markdown inoremap ;i ![](<++>)<Space><++><Esc>F[a
autocmd Filetype markdown inoremap ;a [](<++>)<Space><++><Esc>F[a
autocmd Filetype markdown inoremap ;1 #<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ;2 ##<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ;3 ###<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ;l --------<Enter>
"""END

nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align'

Plug 'scrooloose/syntastic'
Plug 'leafgarland/typescript-vim'

let g:syntastic_enable_signs=1     " enables error reporting in the gutter
let g:syntastic_auto_loc_list=1    " when there are errors, show the quickfix window that lists t

Plug 'clausreinke/typescript-tools'

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
Plug 'tmhedberg/matchit'

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

set ruler         " show the cursor position all the time
set showcmd       " display incomplete command
set path+=**
set wildmenu

let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s)\zs\.\S\+'

""" SYSTEM CLIPBOARD COPY & PASTE SUPPORT
set pastetoggle=<F2> "F2 before pasting to preserve indentation

"Copy paste to/from clipboard
vnoremap <C-c> "*y
map <silent><Leader>p :set paste<CR>o<esc>"*]p:set nopaste<cr>"
map <silent><Leader><S-p> :set paste<CR>O<esc>"*]p:set nopaste<cr>"

set matchpairs+=<:> "HTML Editing

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS

set number
set relativenumber
set numberwidth=2

au FocusLost,WinLeave * :silent! wa

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

"Use enter to create new lines w/o entering insert mode
nnoremap <CR> o<Esc>

function! SetFileEncUnicode()
  set fileencoding=utf-8
endfunc

function! NumberToggle()
  set relativenumber!
endfunc

function! PrintLandscapeToFileA4()
:set printoptions=portrait:n,paper:A4
:hardcopy >~/expand('%:t')<C-R>=strftime("%Y%M%D-%H%i%s")
endfunc

nnoremap <C-S-n> :call NumberToggle()<cr>
nnoremap <C-S-u> :call SetFileEncUnicode()<cr>
nnoremap <C-S-l> :call PrintLandscapeToFileA4()<cr>

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

syntax enable
" set showcmd

set hlsearch

colorscheme desert
set background=dark

set ruler

set cmdheight=2

set encoding=utf8
set fileencoding=utf8
set fileencodings=ucs-bom,utf8,prc

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
au FileType python setl softtabstop=4 shiftwidth=4 tabstop=4 textwidth=90 expandtab
au FileType rst setl textwidth=80

" PHP settings
au FileType php setl textwidth=120 softtabstop=4 shiftwidth=4 tabstop=4 noexpandtab

" Javascript settings
au FileType javascript setl textwidth=120 softtabstop=4 shiftwidth=4 tabstop=4 noexpandtab

map <C-o> :NERDTreeToggle<CR>
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>


set mouse=a
set bg=dark

":nnoremap <A-n> :bnext<CR>:redraw<CR>:ls<CR>
":nnoremap <A-p> :bprevious<CR>:redraw<CR>:ls<CR>

":nnoremap <C-n> :bnext<CR>
":nnoremap <C-p> :bprevious<CR>
set showcmd
