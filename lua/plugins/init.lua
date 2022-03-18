local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	Packer_bootstrap = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
end

local packer = require("packer")

packer.startup(function(use)
	use("wbthomason/packer.nvim")

	use("kyazdani42/nvim-web-devicons")
	use("kyazdani42/nvim-tree.lua")

	-- coc
	use("neoclide/coc.nvim")

	-- vista
	use("liuchengxu/vista.vim")

	-- cursor
	use("mg979/vim-visual-multi")

	-- easy align
	use("junegunn/vim-easy-align")

	-- AutoFormat
	use("Chiel92/vim-autoformat")

	-- Automatically pair
	use("jiangmiao/auto-pairs")

	-- colorizar
	use("norcalli/nvim-colorizer.lua")

	-- Interesting todo comment
	use("folke/todo-comments.nvim")

	-- Comment quickly
	use("terrortylor/nvim-comment")

	-- undotree
	use("mbbill/undotree")

	-- Colorscheme
	use("Mofiqul/vscode.nvim")
	use("navarasu/onedark.nvim")
	use("liuchengxu/space-vim-theme")
	use("rakr/vim-two-firewatch")
	use("marko-cerovac/material.nvim")

	-- status line
	-- use {'glepnir/galaxyline.nvim', branch = 'main'}
	use("itchyny/lightline.vim")

	-- buffer_line
	use("akinsho/bufferline.nvim")

	-- dashboard
	use("glepnir/dashboard-nvim")

	-- treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})

	-- Telescope
	use("nvim-lua/popup.nvim")
	use("nvim-lua/plenary.nvim")
	use("nvim-telescope/telescope.nvim")
	use("nvim-telescope/telescope-media-files.nvim")
	use("AckslD/nvim-neoclip.lua")
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use("fhill2/telescope-ultisnips.nvim")
	use({ "mark-coyle/telescope-dbcli.nvim" })
	use("tom-anders/telescope-vim-bookmarks.nvim")

	-- bookmarks
	use("MattesGroeger/vim-bookmarks")

	-- git
	use({
		"lewis6991/gitsigns.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
		},
		-- tag = 'release' -- To use the latest release
	})

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if Packer_bootstrap then
		require("packer").sync()
	end
end)

require("plugins.coc")
require("plugins.nvim-tree")
require("plugins.git")
require("plugins.dashboard")
require("plugins.bufferline")
require("plugins.lightline")
require("plugins.commenter")
require("plugins.vista")
require("plugins.autoformat")
require("plugins.nvim-treesitter")
