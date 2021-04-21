call plug#begin()
Plug 'dylanaraps/wal.vim'
Plug '/usr/bin/fzf'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
call plug#end()

colorscheme wal

" Leader Mapping
let mapleader=" "

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

" Map leader d to blackhole register
nnoremap <leader>d "_d
xnoremap <leader>d "_d
nnoremap <leaDer>D "_D
xnoremap <leaDer>D "_D

" Map leader c to blackhole register
nnoremap <leader>c "_c
xnoremap <leader>c "_c
nnoremap <leader>C "_C
xnoremap <leader>C "_C

" Map regular paste to blackhole register
xnoremap p "_dP
xnoremap <leader>p p

xnoremap P "_dP
xnoremap <leader>P P

"Map [ESC] to kj
imap kj <Esc>

" Set number of columns for tab
set sts=2

" Width of tab if 4
set ts=2

" Indents have a width of 8
set sw=2

" Smart tabs
set smarttab

" Use system clipboard
set clipboard=unnamedplus

" Break lines visually on full words
set lbr
" Linebreak on 80 characters
"set tw=200
"set tw=0
"set textwidth=0
"set wrapmargin=0

"Auto indent
set ai 
"filetype indent on

"Smart indent
set si 

"Wrap lines
"set wrap 

" Autoformatting lists
set comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-,fb:[+],fb:[x],fb:[-]
set formatoptions=tcqnr
"set formatoptions=cro
set breakindent
"set nolist

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

" Error highlighting
hi Error ctermfg=0

" Buffers stay open in the background
set hidden

" Change working dir when opening buffer
"autocmd BufEnter * silent! lcd %:p:h

" Open current buffer as a jira ticket
function! s:OpenTicket(ticket)
	execute '!ot' a:ticket
endfunction
command Ot call s:OpenTicket(expand('%:t'))

" Files to hide in file tree
let g:netrw_list_hide= '.*\.swp$,.DS_Store,*/tmp/*,*.so,*.swp,*.zip,*.git,^\.\.\=/\=$'

" Use leader-[hjkl] to select the active split!
nmap <silent> <leader>k :wincmd k<CR>
nmap <silent> <leader>j :wincmd j<CR>
nmap <silent> <leader>h :wincmd h<CR>
nmap <silent> <leader>l :wincmd l<CR>

" Close one buffer without closing all
nmap ,d :b#<bar>bd#<CR>

""""""""""""""
" NERDTree config
""""""""""""""
" NERDTree mappings
nnoremap <leader>n :NERDTreeFocus<CR>

"nnoremap <C-n> :NERDTree<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"increase default NERDTree size
let g:NERDTreeWinSize=50

" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
			\ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | wincmd p | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
"autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
"    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" Exit Vim if NERDTree is the only window left.
"autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
"    \ quit | endif

""""""""""""""
" FZF CONFIG
""""""""""""""
nmap <C-P> :FZF<CR>

