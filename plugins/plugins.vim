call plug#begin()

Plug 'nanotech/jellybeans.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'dense-analysis/ale'
Plug 'ap/vim-css-color'

call plug#end()

runtime! plugins/jellybeans.vim
runtime! plugins/vim-lsp.vim
runtime! plugins/ale.vim
