" See http://www.jonlee.ca/hacking-vim-the-ultimate-vimrc for more options

" Turn vi compatability off
set nocompatible

" Turn syntax highlighting on
syntax on

" Turn indenting on for plugins depending on filetype?
filetype plugin indent on

" Pathogen
execute pathogen#infect()

" Soft tabs, 2 spaces
set smartindent
set expandtab tabstop=2 shiftwidth=2

" Line numbering
set number
set numberwidth=5
set relativenumber
set number

" Word wrap off
set wrap!

" More informative status line
set statusline=%F%m%r%h%w\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2

" Make tabs easier
set showtabline=2
nnoremap <F6> :silent tabn <Enter>
nnoremap <F5> :silent tabp <Enter>

" Navigating splits with ease
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

" Some search stuff
set ignorecase
set smartcase
set incsearch
set hlsearch

" Mouse enabled
set mouse=a

" Font stuff
"set background=light
set background=dark
colorscheme solarized
set guifont=Inconsolata:h16

" Hide MacVims toolbar
set guioptions-=T

" Blink matching parens
set sm

" Highlight line/column
set cursorline
set cursorcolumn
