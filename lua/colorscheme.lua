vim.cmd[[colorscheme tokyonight]]
vim.g.tokyonight_style = "night"
vim.g.tokyonight_sidebars = {'NvimTree','vista_kind','dbui','packer','undotree','toggleterm','Outline'}
vim.g.tokyonight_transparent = false
vim.g.tokyonight_transparent_sidebar = false
vim.api.nvim_exec([[
augroup highlight_yank
autocmd!
autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 200})
augroup END
]], true)
vim.api.nvim_command('hi StatusLine guibg='..'#202328')
vim.api.nvim_exec([[
autocmd VimEnter * hi HLIndentLine ctermfg=244
]], true)
