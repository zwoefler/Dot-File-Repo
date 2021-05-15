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
set tabstop=4 " Tab to be 4 spaces
set softtabstop=4 " Tab look like 4 spaces
set shiftwidth=4 "Indentationlevel 4 spaces
set expandtab    " Tab character expand to 4 spaces
set autoindent
set smartindent

" 80 character's border line
set colorcolumn=80
highlight ColorColumn ctermbg=3

" Explorer Settings
let g:netrw_banner=0
let g:netrw_liststyle=3

" FileType Settings
autocmd FileType python setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType html setlocal sw=2 ts=2
autocmd FileType yaml setlocal sw=2 ts=2 sts=2 expandtab
autocmd FileType javascript setlocal sw=2 ts=2 sts=2 noexpandtab
