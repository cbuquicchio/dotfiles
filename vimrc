execute pathogen#infect()
set ffs=unix,dos
set autochdir

colorscheme elflord

syntax on
autocmd FileType yaml set syntax=off
filetype on
filetype plugin on

set directory=$HOME/.swapfiles/

set t_Co=256
set laststatus=2
set colorcolumn=80

set cul

" space and tabs
set expandtab
set softtabstop=4
set shiftwidth=4

autocmd FileType make set noexpandtab|set shiftwidth=4|set tabstop=4
autocmd FileType c set noexpandtab|set shiftwidth=8|set tabstop=8
autocmd FileType gitcommit set colorcolumn=50

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

" Listing style
let g:netrw_liststyle=3

" vim better whitepspace
autocmd BufWritePre * StripWhitespace

" ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*/tmp/*,*/dist/*,*/packages/*,*/node_modules/*,
            \*/bower_components/*,*.so,*.swp,*.zip

" ctags
set tags=.tags;

" jsx syntax highlighting
let g:jsx_ext_required = 0
let g:javascript_plugin_flow = 1

" vim-go and makefile
set autowrite
let g:go_fmt_command = "goimports"
