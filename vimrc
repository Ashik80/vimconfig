let g:mapleader = " "

set number relativenumber
set tabstop=4 shiftwidth=4
set autoindent smartindent expandtab
set foldlevel=99 foldmethod=indent
set incsearch hlsearch
set ignorecase smartcase
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
set completeopt=menuone,preview
set laststatus=2
set statusline=%f\ %m%r%=%l,%c%V\ \ \ \ \ %P

hi Pmenu ctermfg=7 ctermbg=0
hi PmenuSel ctermfg=0 ctermbg=11

set grepprg=grep\ -Rin\ --exclude-dir={__pycache__,node_modules,.git}\ $*

command! -nargs=1 GREP silent grep! <args> | redraw! | cw
command! ListFiles norm i!!find .
            \ -type d -name plugged -prune -o
            \ -type d -name __pycache__ -prune -o
            \ -type d -name node_modules -prune -o
            \ -type d -name .git -prune -o
            \ -print | sed 's/^/:e /'

if has('macunix')
    vmap <leader>y :w !pbcopy<CR>
    vmap <leader>cp :r !pbpaste<CR>
    nmap <leader>cp :r !pbpaste<CR>
else
    vmap <leader>y :w !xsel -b<CR>
    vmap <leader>cp :r !xsel -b<CR>
    nmap <leader>cp :r !xsel -b<CR>
endif

nmap <leader>yf :let @f = expand("%")<CR>
nmap <leader>fg :GREP<space>
nmap <leader>fb :ls<CR>:b<space>
nmap <leader>fl :ListFiles<CR>
nmap <leader>n :noh<CR>
vmap > >gv
vmap < <gv
