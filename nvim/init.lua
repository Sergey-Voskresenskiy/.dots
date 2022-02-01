-- Base
vim.wo.number = true
vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

-- packer
require('plugins')

-- Other
require('settings.color')
require('settings.keymap')
