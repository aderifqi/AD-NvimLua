local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true}

vim.g.mapleader = ','

map('n', '<leader>e', ':NvimTreeToggle<CR>', opts)
map('n', '<CR>', ':nohl<CR>', opts)

map('n', '<leader><leader>', '<C-^>', opts)
map('i', 'qq', '<Esc>', opts)
map('n', ';', ':', opts)

--- use ctrl+hjkl to move between split/vsplit panels
map('n', '<C-h>', '<C-n><C-w>h', opts)
map('n', '<C-j>', '<C-n><C-w>j', opts)
map('n', '<C-k>', '<C-n><C-w>k', opts)
map('n', '<C-l>', '<C-n><C-w>l', opts)
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)
map('n', '<C-l>', '<C-w>l', opts)
-- buffer and tab
map('n', '<leader>m', ':tabn<CR>', opts)
map('n', '<leader>n', ':tabp<CR>', opts)
map('n', '<leader>k', ':bp<CR>', opts)
map('n', '<leader>l', ':bn<CR>', opts)
map('n', '<leader>bd', ':bd<CR>', opts)
-- nnoremap <C-t> :tabnew<CR>
--> telescope mappings
map('n', '<leader>f', ':Telescope find_files<CR>', opts)
map('n', '<leader>fg', ':Telescope live_grep<CR>', opts)
map('n', '<leader>b', ':Telescope buffers<CR>', opts)
map('n', '<leader>fh', ':Telescope help_tags<CR>', opts)
