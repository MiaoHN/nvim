require('basic')
require('keybindings')
vim.o.background = "dark"
vim.cmd([[colorscheme zephyr]])

require('plugins')

require('plugin-config/nvim-tree')
require('plugin-config/bufferline')
require('plugin-config/nvim-treesitter')
require('plugin-config/telescope')
require('plugin-config/gitsigns')

-- lsp
require('lsp/setup')
require('lsp/nvim-cmp')
