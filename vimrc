execute pathogen#infect()

set ffs=unix,dos
set autochdir

colorscheme elflord

syntax on
filetype on
filetype plugin on

set directory=$HOME/.swapfiles/

set t_Co=256
set laststatus=2

" space and tabs
set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2

" UI Configuration
set number
set showcmd
set cursorline
filetype indent on
set wildmenu
set lazyredraw
set showmatch

" Searching
set incsearch
set hlsearch

" Folding
set foldenable
set foldlevelstart=10
set foldnestmax=10
"space open/closes folds
nnoremap <space> za
"fold based on indent level
set foldmethod=indent

" Navigate Windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Resize Split Windows
" increase height
nnoremap + <C-w>+
" decrease height
nnoremap - <C-w>-
" increase width
nnoremap >> <C-w>>
" decrease width
nnoremap << <C-w><
" resize to equal dimensions based on splits
nnoremap == <C-w>=

" Better Whitespace
autocmd BufWritePre * StripWhitespace

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_include_dirs = ['inc', 'include', 'lib', 'libs']
let g:syntastic_cpp_compiler_options = '-std=c++11'

" Listing style
let g:netrw_liststyle=3

" Airline
let g:airline_theme='base16_eighties'
