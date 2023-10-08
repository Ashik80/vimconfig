hi SignColumn ctermbg=NONE

nmap <leader>ca  <Plug>(coc-codeaction-cursor)
nmap <leader>gd  <Plug>(coc-definition)
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction
