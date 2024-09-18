set nocompatible
set scrolloff=10
set number
set relativenumber
set mousehide
set incsearch
set ignorecase
set smartcase
set noerrorbells 
set belloff=all
set visualbell
set clipboard=unnamedplus

"Default mapping

"Splits
nmap sh <c-w>h
nmap sj <c-w>j
nmap sk <c-w>k
nmap sl <c-w>l
nmap <c-h> <C-w><
nmap <c-l> <C-w>>
nmap <c-k> <C-w>+
nmap <c-j> <C-w>-

nmap ss :split<Return>
nmap sv :vsplit<Return>

"Centering
nnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz
nnoremap n nzz
nnoremap N Nzz

