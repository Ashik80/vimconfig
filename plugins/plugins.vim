call plug#begin()

Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'dense-analysis/ale'
Plug 'itchyny/lightline.vim'
Plug 'ap/vim-css-color'

call plug#end()

runtime! plugins/vim-lsp.vim
runtime! plugins/ale.vim
