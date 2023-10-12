set tabstop=2
set shiftwidth=2
set colorcolumn=100

command! MakeTags execute 'term ctags -R --exclude=node_modules .' | bd!
command! EslintFixAll execute 'silent !eslint_d --fix %' | redraw! | e

nmap <leader>fe :EslintFixAll<CR>
nmap <leader>sta :norm aconst [] = useState();F]
