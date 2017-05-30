set nocompatible
source $VIMRUNTIME/vimrc_example.vim

" Disable this, stick to the original by ly
"source $VIMRUNTIME/mswin.vim
"behave mswin

" enable directx on Windows by ly
set renderoptions=type:directx,renmode:5,taamode:1

" GUI settings, remove menus,toolbars,tabs
set guioptions-=m
set guioptions-=T
set guioptions-=e
set guioptions-=g
set guioptions+=M

execute pathogen#infect()

