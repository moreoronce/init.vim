call plug#begin('~/.vim/plugged')
    Plug 'jistr/vim-nerdtree-tabs'
	Plug 'mhinz/vim-startify'
    Plug 'tomlion/vim-solidity'
	Plug 'junegunn/fzf'
	Plug 'junegunn/fzf.vim'
    Plug 'preservim/nerdtree'
	Plug 'morhetz/gruvbox'
call plug#end()

"防止重复加载
if get(s:, 'loaded', 0) != 0
	finish
else
	let s:loaded = 1
endif

"取得本文件所在目录
let s:home = fnamemodify(resolve(expand('<sfile>:p')), ':h')
set nocompatible
set backspace=eol,start,indent
set number
set cursorline
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set autoindent
set winaltkeys=no
set lazyredraw
set ignorecase

" 显示括号匹配
set showmatch
" 高亮查找匹配
set hlsearch
" 增量式搜索
set incsearch

" 开启语法高亮
syntax on
" 代码颜色主题
set t_Co=256
colorscheme gruvbox

" 在右下角显示部分命令
set showcmd
" 命令可以用tab补全,并设置匹配规则
set wildmenu
set wildmode=list:longest,full

" 允许隐藏未保存的buffer
set hidden
" 设置分屏时的位置
set splitright
set splitbelow

" 检测文件类型
filetype on

" 禁用自动备份
set nobackup
set nowritebackup
set noswapfile

map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1
let g:NERDTreeHidden=1
let NERDTreeIgnore = ['\.pyc$', '\.swp', '\.swo', '\.vscode', '__pycache__']

set guifont="JetBrainsMono Nerd Font Mono:10"
