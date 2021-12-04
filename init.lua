_G.vim = vim

vim.cmd("syntax enable")
require("globals")
-- general
require("keymappings")
require("settings")
require("colorscheme")

-- plugins
require("plugins")
require("plugins.coc")
require("plugins.nvim-tree")
require("plugins.git")
require("plugins.dashboard")
require("plugins.project")
require("plugins.bufferline")
require("plugins.lightline")
require("plugins.markdown")
require("plugins.commenter")
require("plugins.latex")
require("plugins.vista")
require("plugins.autoformat")
