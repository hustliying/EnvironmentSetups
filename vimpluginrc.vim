" Put this file in vimfiles/after/plugin/
" Plugin config AFTER loading
" ===========================
" EasyMotion
"map F <Plug>(easymotion-s)
"map , <Plug>(easymotion-s)
map , <Plug>(easymotion-bd-w)
"map <Leader>j <Plug>(easymotion-bd-jk)
"map <Leader>k <Plug>(easymotion-bd-jk)
"map <Leader>f <Plug>(easymotion-bd-jk)
"map <Leader>z <Plug>(easymotion-bd-jk)
delcommand EMCommandLineMap
delcommand EMCommandLineUnMap
delcommand EMCommandLineNoreMap
" Shortcut for NerdTree
" mnemonic [e]xplorer
map <Leader>e  :NERDTreeToggle<CR>
map <Leader>n  :NERDTreeToggle<CR>

