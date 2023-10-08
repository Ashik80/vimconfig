packadd lsp

call LspAddServer([#{
            \ name: 'typescriptlang',
            \ filetype: ['javascript', 'typescript', 'javascriptreact', 'typescriptreact'],
            \ path: 'typescript-language-server',
            \ args: ['--stdio'],
            \ }])

call LspAddServer([#{
            \ name: 'pylsp',
            \ filetype: ['python'],
            \ path: 'pylsp',
            \ }])

call LspAddServer([#{
            \ name: 'vscode-eslint-server',
            \ filetype: ['javascript', 'typescript', 'javascriptreact', 'typescriptreact'],
            \ path: 'vscode-eslint-language-server',
            \ args: ['--stdio'],
            \ }])

call LspAddServer([#{
            \ name: 'pyright',
            \ filetype: ['python'],
            \ path: 'pyright-langserver',
            \ args: ['--stdio'],
            \ workspaceConfig: #{
            \   python: #{
            \     pythonPath: 'python'
            \ }}
            \ }])

let lsp_options = #{
      \ diagVirtualTextAlign: 'after',
      \ ignoreMissingServer: v:true,
      \ showDiagWithVirtualText: v:true,
      \ showInlayHints: v:true,
      \ usePopupInCodeAction: v:true,
      \ showDiagInBalloon: v:true,
      \}

call LspOptionsSet(lsp_options)

hi SignColumn ctermbg=NONE
hi LspDiagInlineWarning ctermbg=NONE term=underline cterm=underline
hi LspDiagVirtualTextWarning ctermbg=NONE ctermfg=11
hi LspDiagInlineHint ctermbg=NONE term=underline cterm=underline
hi LspDiagVirtualTextHint ctermbg=NONE ctermfg=14
hi LspDiagInlineError ctermbg=NONE term=underline cterm=underline
hi LspDiagVirtualTextError ctermbg=NONE ctermfg=9
