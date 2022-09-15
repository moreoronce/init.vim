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
if exists("g:neovide")
    " Put anything you want to happen only in Neovide here
    let g:neovide_remember_window_size = v:true
    let g:neovide_hide_mouse_when_typing = v:false
endif
set guifont=JetBrainsMonoMedium\ NF:h9
source $HOME/.vim/ginit.vim 
