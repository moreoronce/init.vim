return require('packer').startup(function(use)
        use 'wbthomason/packer.nvim'
        use {'neoclide/coc.nvim', branch='release'}
        use 'ervandew/supertab'
        use 'itchyny/lightline.vim'
        use 'ryanoasis/vim-devicons' 
        use 'tomlion/vim-solidity'
        use 'tpope/vim-surround'
        use 'jistr/vim-nerdtree-tabs'
        use 'dstein64/vim-startuptime'
        use 'mhinz/vim-startify'
--        use {'junegunn/fzf', run='./install --bin, }
        use 'junegunn/fzf.vim'
        use 'preservim/nerdtree'
        use 'morhetz/gruvbox'
        use {
                'kyazdani42/nvim-tree.lua',
                requires = {
                         'kyazdani42/nvim-web-devicons', -- optional, for file icons
  },
                 tag = 'nightly' -- optional, updated every week. (see issue #1193)
}
        use 'mengelbrecht/lightline-bufferline'
end)
