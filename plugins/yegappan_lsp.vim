let lsp_servers = [#{
            \ name: 'typescriptlang',
            \ filetype: ['javascript', 'typescript', 'javascriptreact', 'typescriptreact'],
            \ path: 'typescript-language-server',
            \ args: ['--stdio'],
            \ },
            \ #{
            \ name: 'pylsp',
            \ filetype: ['python'],
            \ path: 'pylsp',
            \ },
            \ #{
            \ name: 'pyright',
            \ filetype: ['python'],
            \ path: 'pyright-langserver',
            \ args: ['--stdio'],
            \ workspaceConfig: #{
            \   python: #{
            \     pythonPath: 'python'
            \   }
            \ }}]

autocmd User LspSetup call LspAddServer(lsp_servers)

let lsp_options = #{
      \ diagVirtualTextAlign: 'after',
      \ ignoreMissingServer: v:true,
      \ showDiagWithVirtualText: v:true,
      \ showInlayHints: v:true,
      \ usePopupInCodeAction: v:true,
      \ showDiagInBalloon: v:true,
      \}

autocmd User LspSetup call LspOptionsSet(lsp_options)

hi SignColumn ctermbg=NONE
hi LspDiagInlineWarning ctermbg=NONE term=underline cterm=underline
hi LspDiagVirtualTextWarning ctermbg=NONE ctermfg=11
hi LspDiagInlineHint ctermbg=NONE term=underline cterm=underline
hi LspDiagVirtualTextHint ctermbg=NONE ctermfg=14
hi LspDiagInlineError ctermbg=NONE term=underline cterm=underline
hi LspDiagVirtualTextError ctermbg=NONE ctermfg=9
