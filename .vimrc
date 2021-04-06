call plug#begin()
Plug 'dylanaraps/wal.vim'
call plug#end()

colorscheme wal

" Leader Mapping
let mapleader=","

" Display hybird line numbers
set number relativenumber

" Toggle relative line numbers
" use Ctrl+L to toggle the line number counting method
function! g:ToggleNuMode()
  if &relativenumber == 0
     set relativenumber
  else
     set norelativenumber
     set number
  endif
endfunction
nnoremap <silent><C-L> :call g:ToggleNuMode()<cr>

" Map K and J to jump wraped lines correctly
nnoremap j gj
nnoremap gj j
nnoremap k gk
nnoremap gk k

" Map regular paste to blackhole register
" Map leader+d to blackhole register
nnoremap <leader>d "_d
xnoremap <leader>d "_d
xnoremap p "_dP
xnoremap <leader>p p

"Map [ESC] to kj
imap kj <Esc>

" Set number of columns for tab
set sts=2

" Width of tab if 4
set ts=1

" Indents have a width of 8
set sw=2

" Smart tabs
set smarttab

" Use system clipboard
set clipboard=unnamedplus

" Linebreak on 80 characters
" set lbr
" set tw=80

"Auto indent
set ai 

"Smart indent
set si 

"Wrap lines
"set wrap 

" Autoformatting lists
set comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-,fb:[+],fb:[x],fb:[-]
set formatoptions=tcq

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
