let g:ale_linters = {
            \ 'javascript': ['eslint'],
            \ 'javascriptreact': ['eslint'],
            \ 'typescript': ['eslint'],
            \ 'typescriptreact': ['eslint'],
            \ }

let g:ale_linters_explicit = 1
let g:ale_disable_lsp = 1
let g:ale_sign_error = 'E'
let g:ale_sign_warning = 'W'
let g:ale_virtualtext_prefix = "   ‣ "
let g:ale_javascript_eslint_use_global = 1
let g:ale_javascript_eslint_executable = 'eslint_d'
let g:ale_javascriptreact_eslint_use_global = 1
let g:ale_javascriptreact_eslint_executable = 'eslint_d'
let g:ale_typescript_eslint_use_global = 1
let g:ale_typescript_eslint_executable = 'eslint_d'
let g:ale_typescriptreact_eslint_use_global = 1
let g:ale_typescriptreact_eslint_executable = 'eslint_d'

hi ALEError cterm=underline
hi link ALEErrorSign ErrorMsg
hi link ALEVirtualTextError ErrorMsg
hi ALEWarning cterm=underline
hi link ALEWarningSign WarningMsg
hi link ALEVirtualTextWarning WarningMsg
