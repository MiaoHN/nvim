require('basic')
require('keybindings')
vim.o.background = "dark"
vim.cmd([[colorscheme zephyr]])

require('plugins')

require('plugin-config/nvim-tree')
require('plugin-config/bufferline')
require('plugin-config/nvim-treesitter')
