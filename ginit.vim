""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                          config for nvim-qt                          "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" To check if neovim-qt is running, use `exists('g:GuiLoaded')`,
" see https://github.com/equalsraf/neovim-qt/issues/219
if exists('g:GuiLoaded')
  " call GuiWindowMaximized(1)
  GuiTabline 0
  GuiPopupmenu 0
  GuiLinespace 2
endif
source $HOME/.vim/ginit.vim 
