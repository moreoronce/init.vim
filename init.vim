"修改<leader>键
let g:mapleader = ","
let mapleader = ","

"Vim-Plug插件配置
call plug#begin('~/.vim/plugged')
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'ervandew/supertab'
    Plug 'glepnir/spaceline.vim'
    Plug 'Neur1n/neuims'
    " Use the icon plugin for better behavior
    Plug 'ryanoasis/vim-devicons' 
    Plug 'tpope/vim-surround'
    Plug 'jistr/vim-nerdtree-tabs'
    Plug 'mhinz/vim-startify'
    Plug 'junegunn/fzf' , { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'preservim/nerdtree'
    Plug 'morhetz/gruvbox'
call plug#end()

"插件配置
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

"NerdTree相关配置
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=0
let g:NERDTreeHidden=1
let NERDTreeIgnore = ['\.pyc$', '\.swp', '\.swo', '\.vscode', '__pycache__']

"statusline配置
set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

map <leader>p :Files $HOMEPATH<CR>
map <leader>b :Buffers<CR>

"Windows公用剪贴板
set clipboard=unnamed
nnoremap <C-p> "+p
vnoremap <C-y> "+y

"复制时不带行号
se mouse+=a

"增加全选，回到开始，回到末尾
map <leader>sa ggVG"
map <F1> gg
map <F2> G

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" neuims default and manually control
nnoremap <silent> <leader>is :call neuims#Switch()<CR>
let s:win = {
      \ 'im': 'US Keyboard',
      \ 'status': 0,
      \ 'keyboards': {
      \   'US Keyboard': 0x0409,
      \   'Microsoft Pinyin': 0x0804,
      \ },
      \ }
