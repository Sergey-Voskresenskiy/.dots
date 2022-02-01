-- Base
vim.wo.number = true
vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

vim.opt.fillchars = { vert = ' ' }
vim.opt.showtabline = 1
vim.opt.scrolloff = 5
vim.opt.mouse = 'a'
vim.opt.showmode = false
vim.opt.hidden = true
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.encoding = 'UTF-8'
vim.opt.clipboard = 'unnamedplus'
vim.opt.tabstop = 2
vim.opt.spelllang = 'it'
vim.opt.softtabstop = 2
vim.opt.swapfile = false
vim.opt.undofile = false
vim.opt.expandtab = true
vim.opt.shiftwidth = 2

-- packer
require('plugins')

-- Other
require('settings.color')
require('settings.keymap')

