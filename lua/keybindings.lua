vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

map("n", "J", "9j", opt)
map("n", "K", "9k", opt)

-- 去掉 Esc
map("i", "jj", "<Esc>", opt)

-- 缩进
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)

map("n", "<LEADER>h", "<C-w>h", opt)
map("n", "<LEADER>j", "<C-w>j", opt)
map("n", "<LEADER>k", "<C-w>k", opt)
map("n", "<LEADER>l", "<C-w>l", opt)

map("n", "<LEADER>e", ":NvimTreeToggle<CR>", opt)

-- bufferline tab
map("n", "<Tab>", ":BufferLineCyclePrev<CR>",opt)
map("n", "<S-Tab>", ":BufferLineCycleNext<CR>",opt)

pluginKeys = {}
