set tabstop=4
set shiftwidth=4
set expandtab
set relativenumber
set number
set colorcolumn=80

" encodings
set encoding=utf-8
set termencoding=utf-8
set fileencoding=chinese
set fileencodings=ucs-bom,utf-8,chinese
language messages zh_cn.utf-8

augroup filetype
  au! BufRead,BufNewFile *.proto setfiletype proto
augroup end

" Execute file being edited with <Shift> + e:
map <S-e> :w<CR>:!python %:p <CR>:redr!<CR>
" map <S-e> :w<CR>:silent !python %:p <CR>:redr!<CR>
" map <S-e> :w<CR>:!C:\Users\liyin_000\AppData\Local\Programs\Python\Python35\python %:p <CR>:redr!<CR>
" map <S-e> :w<CR>:py3file %:p <CR>:redr!<CR>
" map <F5> :w<CR>:py3file %:p <CR>:redr!<CR>

" Insert a blank line above
map <S-Enter> O<Esc>j
" split line after cursor
map K mba<CR><Esc>`b

" Insert a single space like in notepad, cannot be repeated using .
map <Space> i<Space><Esc>l
" or
" Insert a single character, cannot be repeated using .
" To insert space like in notepad, press space twice
" map <Space> i<Space><Esc>r

" Speed up scrolling
noremap <C-j> 6j
noremap <C-k> 6k
" Experimental, always focus at the center
" noremap j jzz
" noremap k kzz

" Position from the top or bottom of the screen to start scrolling
" from defaults.vim
" set scrolloff=5
set scrolloff=0

syntax enable
set background=dark
colorscheme solarized

winpos 550 100

" Xaml
au BufNewFile,BufRead *.xaml  setfiletype xml

if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window.
  "set lines=999 columns=999
  au GUIEnter * simalt ~x
  "set lines=40 columns=90
else
  " This is console Vim.
  if exists("+lines")
    set lines=50
  endif
  if exists("+columns")
    set columns=100
  endif
endif


" highlight trailing spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_win32")
    "set guifont=Consolas:h14:cANSI
    "set guifont=Inziu_Iosevka_SC:h15:cGB2312
    set guifont=Inziu_IosevkaCC_SC:h15:cGB2312
    "set guifont=Inziu_Iosevka_Slab_SC:h15:cGB2312
    "set guifont=Inziu_IosevkaCC_Slab_SC:h15:cGB2312
  endif
endif

" cd to the dir of the current file automatically
set autochdir

" get all *~ files to one place
set bdir=~\vimfiles\zzmiscs,.,c:\tmp,c:\temp
set undodir=~\vimfiles\zzmiscs,.,c:\tmp,c:\temp
" get .swp files to one place, or just hide them by setting the Windows Explorer
" set directory=~\vimfiles\zzmiscs,.,C:\Users\LIYIN_~1\AppData\Local\Temp,c:\tmp,c:\temp

" turn off bells
set belloff=all

" turn on plugin indent-guides
IndentGuidesEnable

"EasyMotion
map F <Plug>(easymotion-prefix)
delcommand EMCommandLineMap
delcommand EMCommandLineUnMap
delcommand EMCommandLineNoreMap

" TIP
" find files in Windows, an alternative for Ex-cmd :find
" :silent r!dir /s /b /a:-d  *.java
" save file as flist or hub, mark this file with mF(filelist) or mH(hub) as a
" working file catelog, use 'F or 'H to jump back.
" then open with gf or <C-w>f with cursor under file name.
"

" MNEMONICS
" registers
" a - Active now
" o - Ex-command output by :redir @o or use window variable :redir=>w:output
"     paste by :put=w:output or "=w:output<CR>p
" q - repetition by qq
" f - cmd for Finding Files in file system, :silent r!dir /s /b /a:-d *.java
" b - Browser, Ex-cmd for open current file in a browser, eg. :silent !chrome %
" r - regular expression for searching
"
" marks
" F - file list for convinient gF
" H - working Hub(or Head) file, for TODOs, plan, files etc.
" V - ~/_gvimrc file(here) for my config and tips
" C - ~/_vimrc file for my config and tips
" G - Global, actually a temp file to keep anything needed for now
" s - start of a text block
" e - end of a text block
" h - head in file
" b - used to split a line after cursor
"

" RE - Useful regular expressions
" html tag: <\s\{-}\/\?.\{-}> ,use gn to select next search match
"
"
