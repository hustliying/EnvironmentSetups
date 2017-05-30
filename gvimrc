" Window Position
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

" Font in GUI Window
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


" Plugin config
" turn on plugin indent-guides
IndentGuidesEnable
"
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
