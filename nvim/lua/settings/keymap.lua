local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

map('n', '<F3>', ':set relativenumber!<CR>', opts)
map('n', '<F5>', ':Twilight<CR>', opts)

map('n', '<leader>f', "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
map('n', '<leader>b', "<cmd>lua require'telescope.builtin'.buffers(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
map('n', '<leader>fh', "<cmd>lua require'telescope.builtin'.help_tags(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)

map("n", "<c-t>", "<cmd>Telescope live_grep<cr>", opts)
map("n", "<leader>,", ":Format<cr>", opts)

-- Git
map('n', '<leader>g', ':LazyGit<CR>', opts)
map('n', '<leader>fgs', "<cmd>lua require'telescope.builtin'.git_status(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
map('n', '<leader>fgb', "<cmd>lua require'telescope.builtin'.git_branches(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)

-- Normal --
-- Better window navigation
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)
-- Nvimtree
map("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

map('n', 'g-e', '<cmd>lua vim.diagnostic.open_float(0, { scope = "line", border = "single" })<CR>', opts)
map('n', '[g', '<cmd>lua vim.diagnostic.goto_prev({ float =  { border = "single" }})<CR>', opts)
map('n', ']g', '<cmd>lua vim.diagnostic.goto_next({ float =  { border = "single" }})<CR>', opts)

-- Navigate buffers
map("n", "<S-l>", ":bnext<CR>", opts)
map("n", "<S-h>", ":bprevious<CR>", opts)

-- Visual --
-- Stay in indent mode
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)
