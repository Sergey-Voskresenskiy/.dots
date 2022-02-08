local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<F3>', ':set relativenumber!<CR>', opts)
map('n', '<F5>', ':Twilight<CR>', opts)
