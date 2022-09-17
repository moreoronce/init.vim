---[[ keys.lua ]]
local map = vim.api.nvim_set_keymap

-- remap the key used to leave insert mode
-- map('i', 'jk', '', {})

-- Toggle nvim-tree
map('n', '<F3>', ':NERDTreeToggle<CR>', {noremap = true})
--statuslines
--vim.opt.vimfiler_force_overwrite_statusline = 0
--vim.opt.vimshell_force_overwrite_statusline = 0
--vim.opt.unite_force_overwrite_statusline = 0
