call plug#begin()

Plug 'nanotech/jellybeans.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'dense-analysis/ale'
Plug 'ap/vim-css-color'
Plug 'sheerun/vim-polyglot'

if has('lua')
    Plug 'prabirshrestha/asyncomplete.vim'
    Plug 'prabirshrestha/asyncomplete-lsp.vim'
    Plug 'prabirshrestha/asyncomplete-buffer.vim'
endif

call plug#end()

runtime! plugins/jellybeans.vim
runtime! plugins/vim-lsp.vim
runtime! plugins/ale.vim
if has('lua')
    runtime! plugins/asyncomplete-buffer.vim
endif
