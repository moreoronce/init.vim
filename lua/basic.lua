vim.g.encoding = "UTF-8"
vim.o.fileencoding = "UTF-8"
vim.wo.number = true
vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftround = true
vim.g.mapleader = ","

vim.o.expandtab = true
vim.bo.expandtab = true
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true

vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.incsearch = true

vim.o.autoread = true
vim.bo.autoread = true

vim.o.mouse = "a"

vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false

vim.o.updatetime = 300

vim.o.splitright = true
vim.o.splitbelow = true

vim.o.showtabline = 2


vim.o.cursorline = true
vim.o.showmatch = true
vim.o.hlsearch = true

vim.o.syntax = true

vim.api.nvim_command('colorscheme gruvbox')
vim.opt.termguicolors = true

-- vim.wo.showcmd = true

--Windows Clipobard
vim.opt.clipboard = "unnamedplus"
--vim.api.nvim_set_keymap('<leader>sa','<leader>sa',ggVG,{})
--vim.api.nvim_set_keymap('<F1>','<F1>',gg,{})
--vim.api.nvim_set_keymap('<F2>','<F2>',G,{})
