call plug#begin()
Plug 'dylanaraps/wal.vim'
call plug#end()

colorscheme wal

" Display line numbers
set number

" Toggle relative line numbers
nmap <C-L><C-L> :set relativenumber<CR>

"Map [ESC] to kj
imap kj <Esc>
vmap kj <Esc>

" Set number of columns for tab
set sts=4

" Width of tab if 4
set ts=1

" Indents have a with of 8
set sw=4

" Smart tabs
set smarttab

" Use system clipboard
set clipboard=unnamedplus

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Sets how many lines of history VIM has to remember
set history=500

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

"Always show current position
set ruler

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 

