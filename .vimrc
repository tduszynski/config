call plug#begin('~/.vim/plug')
Plug 'altercation/vim-colors-solarized'
Plug 'chazy/cscope_maps'
Plug 'jlanzarotta/bufexplorer'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/a.vim'
Plug 'airblade/vim-gitgutter'
call plug#end()

" map leader to spacebar
let g:mapleader = "\<space>"

" tagbar settings
let g:tagbar_sort = 1
let g:tagbar_compact = 1

" nerdtree settings
let g:NERDTreeIgnore = ['\.o$', '\.\d$', '\.out$', '\.lo$', '\.la$']

" mappings
map <silent> <leader><cr> :noh<cr>
map <leader>w :w!<cr>
map <leader>q :q!<cr>
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <leader>tb :Tagbar<cr>
map <leader>nt :NERDTree<cr>

" enable syntax hilighting
syntax enable
" detect filetype, load plugins and load ident files
filetype plugin indent on

" set the title of the window to the value of filename
set title
" reload file if changed outside vim
set autoread
" keep this many lines above and below the cursor
set scrolloff=10
" configure backspace so it acts as it should act
set backspace=eol,start,indent
" ignore letter case while searching
set ignorecase
" higlight pattern matches
set hlsearch
" show matches as you type
set incsearch
" no bell on error
set noerrorbells
" no visual bell
set novisualbell
" wait 300ms for a key code or a key sequence to complete
set timeoutlen=300
" display line numbering
set number
" show nice cursorline
set cursorline
" higlight column at 80th character
set colorcolumn=80
" specify end-of-line formats
set ffs=unix,dos
" encoding inside vim
set encoding=utf-8
" file encoding
set fileencodings=utf-8
" terminal encoding
set termencoding=utf-8
" tab is 8 spaces
set tabstop=8
" copy ident from previous line
set autoindent
" smart ident for c files
set smartindent
" enable mouse
set mouse=a
" show status line
set laststatus=2
" status line format
set statusline=\ %F%m%r%h\ %w
" no redraw while executing macros
set lazyredraw
" show matching brackets
set showmatch

" we are not in linux terminal
if &term != "linux"
	colorscheme solarized
	set background=dark
endif

" get rid of trailing white spaces on buffer write
autocmd BufWrite * %s:\s\+$::ge
