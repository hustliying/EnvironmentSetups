set nocompatible
source $VIMRUNTIME/vimrc_example.vim

" Disable this, stick to the original by ly
"source $VIMRUNTIME/mswin.vim
"behave mswin

" encodings
set encoding=utf-8
set termencoding=utf-8
set fileencoding=chinese
set fileencodings=ucs-bom,utf-8,chinese

" Basics
set tabstop=4
set shiftwidth=4
set expandtab
"set relativenumber
set number
set colorcolumn=80
" Position from the top or bottom of the screen to start scrolling
" from defaults.vim
" set scrolloff=5
set scrolloff=0
" Experimental, always focus at the center
"set scrolloff=999


" Mappings
" Execute file being edited with <Shift> + e:
map <S-e> :w<CR>:!python %:p <CR>:redr!<CR>
" map <S-e> :w<CR>:silent !python %:p <CR>:redr!<CR>
" map <S-e> :w<CR>:!C:\Users\liyin_000\AppData\Local\Programs\Python\Python35\python %:p <CR>:redr!<CR>
" map <S-e> :w<CR>:py3file %:p <CR>:redr!<CR>
" map <F5> :w<CR>:py3file %:p <CR>:redr!<CR>
"
" Insert a blank line above
map <S-Enter> O<Esc>j
" split line after cursor
map K mba<CR><Esc>`b
"
" Insert a single space like in notepad, cannot be repeated using .
"map <Space> i<Space><Esc>l
" or
" Insert a single character, cannot be repeated using .
" To insert space like in notepad, press space twice
" map <Space> i<Space><Esc>r
let mapleader="\<Space>"
"
" Speed up scrolling
noremap <C-j> 6j
noremap <C-k> 6k
" fast scrolling with one hand
noremap <A-j> <C-d>
noremap <A-k> <C-u>
"
" mark current file with L, then ZZ
nnoremap ZZ mLZZ


" Console Colors
set background=dark
" for terminal use, need color group for indent-guides plugin
"colorscheme base16-google-dark
"colorscheme base16-flat
colorscheme cmd
" highlight trailing spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
" turn off bells
set belloff=all

" Dirs
" cd to the dir of the current file automatically
set autochdir
"
" get all *~ files to one place
set bdir=~\vimfiles\zzmiscs,.,c:\tmp,c:\temp
set undodir=~\vimfiles\zzmiscs,.,c:\tmp,c:\temp
" get .swp files to one place, or just hide them by setting the Windows Explorer
" set directory=~\vimfiles\zzmiscs,.,C:\Users\LIYIN_~1\AppData\Local\Temp,c:\tmp,c:\temp


" filetype
augroup filetype
  au BufNewFile,BufRead *.xaml  setfiletype xml
  au! BufRead,BufNewFile *.proto setfiletype proto
augroup end


" GUI settings
" enable directx on Windows by ly
set renderoptions=type:directx,renmode:5,taamode:1
"
" remove menus,toolbars,tabs
set guioptions-=m
set guioptions-=T
set guioptions-=e
set guioptions-=g
set guioptions-=r
set guioptions-=L
set guioptions-=b
set guioptions+=M


" Plugin manager
execute pathogen#infect()

" Plugin config BEFORE loading
" ============================
" indent-guides
"IndentGuidesEnable
let g:indent_guides_guide_size=1
let g:indent_guides_enable_on_vim_startup=0
" EasyMotion
" ignore case
let g:EasyMotion_smartcase=1
" ALE
"let g:ale_linters = {'python': ['pylint']} " pylint
"

" Plugin config AFTER loading
" ===========================
" In this file
" ~\vimfiles\after\plugin\vimpluginrc.vim
"
