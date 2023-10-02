set nocompatible              " be iMproved, required
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Plugin 'ThePrimeagen/vim-be-good'
Plugin 'morhetz/gruvbox'

Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'preservim/nerdtree'
" Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'

" Plugin 'git://git.wincent.com/command-t.git'

"Plugin 'file:///home/gmarik/path/to/plugin'

" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
		
set tabstop=4
set shiftwidth=4
set smarttab
set noexpandtab
set softtabstop=4
set backspace=indent,eol,start
set belloff=all
set novisualbell
set t_Co=256

set encoding=utf-8
set fileencodings=utf8,cp1251
set termencoding=utf-8
set number
set relativenumber
set nobackup
set noswapfile

set mousehide
set mouse=a

set showtabline=1
set clipboard=unnamed
set ruler
set colorcolumn=100

"new
set hlsearch
set ignorecase
set smartcase
set cursorline
set scrolloff=10
set sidescrolloff=15
set shortmess+=I
" set showmatch
set matchtime=2

let mapleader=" " 
nmap <leader>n :NERDTreeToggle<CR>


" movements tabs (nerdtree)  
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

nnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz
nnoremap n nzz
nnoremap N Nzz

" airline update time
set ttimeoutlen=50

"gruvbox
if (empty($TMUX))
   if (has("nvim"))
	 let $NVIM_TUI_ENABLE_TRUE_COLOR=1
	 endif
   if (has("termguicolors"))
   set termguicolors
   endif
 endif


autocmd vimenter * ++nested colorscheme gruvbox

set background=dark
let g:gruvbox_contrast_dark='medium'
let g:gruvbox_bold=5

" open by default
autocmd VimEnter * NERDTree | wincmd p
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif


let g:NERDTreeIgnore = ['^node_modules$']
let g:ctrlp_user_command = [ '.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
function! IsNERDTreeOpen()
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

function! SyncTree()
  if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction

" Highlight currently open buffer in NERDTree
autocmd BufEnter * call SyncTree()
" auto fining file
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
"
" coc.nvim depend
set nobackup
set nowritebackup
set updatetime=30
set signcolumn=yes
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> <leader>e <Plug>(coc-diagnostic-next)
nmap <leader>rn <Plug>(coc-rename)
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

autocmd CursorHold * silent call CocActionAsync('highlight')
let g:coc_global_extensions = ['coc-eslint', 'coc-prettier']
inoremap <expr> <C-d> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction
