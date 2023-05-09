" Syntax and numbering
syntax on " set syntax highlighting on
set nu    " set line numbers

" Highlighting
set incsearch " Incremental search. Highlight as you type
set hlsearch  " Highlight search results once typed
nohl

" Backup
set nobackup
set noswapfile
set title

" Indentation
filetype indent on " turns on autoindent based on file type
set autoindent     " Auto indentation
set expandtab      " converts tabs to spaces
set tabstop=2      " Width of tab for a \t char read from file
set softtabstop=2  " Width of tab when tab key or backspace is pressed
set shiftwidth=2   " Width of tab on indentation

" Status
set showcmd
set ruler

" Wrap
set wrap

" Leader
let mapleader=","

" Custom mappings
nnoremap <leader><space> :set relativenumber!<cr>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Switching buffer
nnoremap <leader>nb :bnext<cr>
nnoremap <leader>np :bprev<cr>

" Writing a file
nnoremap <leader>w :w<cr>
inoremap <c-s> <esc>:w<cr>

" Copying text to system clipboard
vnoremap <C-y> "*y

inoremap f<tab> function() {<cr><cr>}<Up><Up><esc>wwwwa
inoremap if<tab> if(){<cr>}<up><esc>wa
inoremap for<tab> for(){<cr>}<up><esc>wa
inoremap while<tab> while(){<cr>}<up><esc>wa

nnoremap <c-s> ViB
vnoremap <c-s> ViB

nnoremap <leader>" viw<esc>a"<esc>bi"<esc>ww
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>ww

nnoremap H ^
nnoremap L $

inoremap ( ()<Left>
inoremap { {}<Left>
inoremap [ []<Left>

"maping esc
inoremap jk <esc>

" Auto indent shell files
augroup Indent
  autocmd!
  autocmd BufWritePre *.sh :normal gg=G``
  autocmd BufWritePre *.js :normal gg=G``
augroup END

" Load testing frame work
nnoremap <C-t> :read ! cat ~/bin/testFrameWork.js<cr>

" Fold
set foldmethod=indent

" airline configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
