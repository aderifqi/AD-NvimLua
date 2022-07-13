local set = vim.opt
local letg = vim.g


letg.python3_host_prog = '/home/ad/venv/python/bin/python'

set.mouse = 'a'

set.expandtab = true;
set.smarttab = true
set.shiftwidth = 4
set.tabstop = 4


set.hlsearch = true
set.incsearch = true
set.ignorecase = true
set.smartcase = true

set.splitbelow = true
set.splitright = true
set.wrap = false
set.scrolloff = 5
set.fileencoding = 'utf-8'
set.termguicolors = true

set.relativenumber = true
set.number = true
set.cursorline = true

set.hidden = true
set.clipboard = "unnamedplus"

vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
vim.o.foldcolumn = '1'
