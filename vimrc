let g:mapleader = " "

syntax on
filetype plugin indent on

set number relativenumber
set tabstop=4 shiftwidth=4
set autoindent smartindent
set expandtab
set foldlevel=99 foldmethod=indent
set incsearch hlsearch
set ignorecase
set smartcase
set colorcolumn=80
set nowrap
set noswapfile
set showcmd
set hidden
set background=dark
set wildmenu
set wildoptions=pum
set wildignorecase
set backspace=indent,eol,start
set ttimeoutlen=0
set omnifunc=syntaxcomplete#Complete
set completeopt=menuone,preview
set wildignore=**/node_modules/**,**/.git/**,**/__pycache__/**
set ruler
set laststatus=2

colorscheme wildcharm

if executable('rg')
    set grepprg=rg\ --no-heading\ --column\ -S
endif

function! FuzzyFileSearch()
    let tempfile = tempname()
    execute 'silent !rg --files | fzf | sed ''s/$/:1:0/'' > '.l:tempfile
    setlocal errorformat=%f:%l:%c
    execute 'cfile '.l:tempfile
    redraw!
    call delete(l:tempfile)
endfunction

command! -nargs=1 GREP silent grep! <args> | redraw! | cw

if has('macunix')
    vmap <leader>y :w !pbcopy<CR>
    vmap <leader>cp :r !pbpaste<CR>
    nmap <leader>cp :r !pbpaste<CR>
else
    vmap <leader>y :w !xsel -b<CR>
    vmap <leader>cp :r !xsel -b<CR>
    nmap <leader>cp :r !xsel -b<CR>
endif

nmap <leader>yf :let @f = expand("%:.")<CR>
nmap <leader>fa :e **/*
nmap <leader>ff :call FuzzyFileSearch()<CR>
nmap <leader>fg :GREP<space>
nmap <leader>fb :ls<CR>:b<space>
nmap <leader>n :noh<CR>
vmap > >gv
vmap < <gv
