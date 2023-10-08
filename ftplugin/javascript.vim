set tabstop=2
set shiftwidth=2
set colorcolumn=100

command! MakeTags execute 'term ctags -R --exclude=node_modules .' | q

nmap <leader>sta :norm aconst [] = useState();F]
