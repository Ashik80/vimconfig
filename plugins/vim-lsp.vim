let g:lsp_settings_filetype_typescript = ['typescript-language-server', 'eslint-language-server']
let g:lsp_settings_filetype_typescriptreact = ['typescript-language-server', 'eslint-language-server']
let g:lsp_settings_filetype_python = ['pylsp', 'pyright-langserver']

let g:lsp_document_highlight_enabled = 0
let g:lsp_document_code_action_signs_enabled = 0
let g:lsp_diagnostics_virtual_text_align = 'after'
let g:lsp_diagnostics_virtual_text_prefix = "   ‣ "
let g:lsp_diagnostics_signs_error = {'text': 'E'}
let g:lsp_diagnostics_signs_warning = {'text': 'W'}
let g:lsp_diagnostics_signs_information = {'text': 'I'}
let g:lsp_diagnostics_signs_hint = {'text': 'H'}

hi link LspHintHighlight LineNr
hi link LspHintText LineNr
hi LspErrorHighlight cterm=underline
hi link LspWarningText WarningMsg
hi LspWarningHighlight cterm=underline

function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> <leader>gd <plug>(lsp-definition)
    nmap <buffer> K <plug>(lsp-hover)
    nmap <buffer> <leader>ca <plug>(lsp-code-action)
    nmap <buffer> <leader>e <plug>(lsp-document-diagnostics)
    nnoremap <buffer> <expr><c-f> lsp#scroll(+4)
    nnoremap <buffer> <expr><c-b> lsp#scroll(-4)
endfunction

augroup lsp_install
    au!
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END
