"修改<leader>键
let mapleader=","

"Vim-Plug插件配置
call plug#begin('~/.vim/plugged')
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'itchyny/lightline.vim'
    Plug 'tpope/vim-surround'
    Plug 'vim-syntastic/syntastic'
    Plug 'jistr/vim-nerdtree-tabs'
    Plug 'mhinz/vim-startify'
    Plug 'tomlion/vim-solidity'
    Plug 'junegunn/fzf'
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
let NERDTreeShowBookmarks=1
let g:NERDTreeHidden=1
let NERDTreeIgnore = ['\.pyc$', '\.swp', '\.swo', '\.vscode', '__pycache__']

"statusline配置
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"syntastic相关配置
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

map <leader>p :Files<CR>
map <leader>b :Buffers<CR>

"Windows公用剪贴板
set clipboard=unnamed

"复制时不带行号
se mouse+=a

"增加全选，回到开始，回到末尾
map <leader>sa ggVG"
map <F1> gg
map <F2> G

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

