call plug#begin()

Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'dense-analysis/ale'

call plug#end()

runtime! plugins/vim-lsp.vim
runtime! plugins/ale.vim
