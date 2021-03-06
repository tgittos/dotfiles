" See http://www.jonlee.ca/hacking-vim-the-ultimate-vimrc for more options

" Turn vi compatability off
set nocompatible

" Turn syntax highlighting on
syntax on

" Turn indenting on for plugins depending on filetype?
filetype plugin indent on

" Soft tabs, 2 spaces
set smartindent
set expandtab tabstop=2 shiftwidth=2

" Line numbering
set number
set numberwidth=5

" Highlight current line
" set cursorline

" Word wrap off
set wrap!

" More informative status line
set statusline=%F%m%r%h%w\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2

" Enable indent folding
set foldenable
set fdm=indent
nnoremap <Space> za
nnoremap <A-Space> zA
set foldlevelstart=20

" Make tabs easier
set showtabline=2
nnoremap <F6> :silent tabn <Enter>
nnoremap <F5> :silent tabp <Enter>

" Navigating splits with ease
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

" NerdTree
" nmap <Tab> :NERDTreeToggle<CR>

" Some search stuff
set ignorecase
set smartcase
set incsearch
set hlsearch

" Mouse enabled
set mouse=a

" Font stuff
set background=light
colo solarized
set guifont=Inconsolata:h16

" Hide MacVims toolbar
set guioptions-=T

" Blink matching parens
set sm

" Swap between background
function! Togglebg()
  if (g:solarized_style=="dark")
    let g:solarized_style="light"
  else
    let g:solarized_style="dark"
  endif
  colo solarized
endfunction
command! TB call Togglebg()
nnoremap <F2> :call Togglebg()<CR>
inoremap <F2> <ESC>:call Togglebg()<CR>a
vnoremap <F2> <ESC>:call Togglebg()<CR>
