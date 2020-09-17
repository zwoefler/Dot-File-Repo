" This is a comment

filetype indent on

" General
syntax enable				" enable syntax highlighting
set number				" Show line numbers
set ruler				" Show row and column ruler information

set hlsearch				" Highlight all search results
set smartcase				" Enable smart-case search
set incsearch				" Searches for strings incrementally

" Finding Files:
set path+=**

" Display all matching files when we tab
set wildmenu

" Indentation
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" Set Spellchecking
" set spell
" set spelllang=en_us,de_de


" 80 character's border line
set colorcolumn=80
highlight ColorColumn ctermbg=3

" Explorer Settings
let g:netrw_banner=0
let g:netrw_liststyle=3
