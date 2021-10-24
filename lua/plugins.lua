local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'

  use {
    'neovim/nvim-lspconfig',
    'williamboman/nvim-lsp-installer',
  }
  use 'onsails/lspkind-nvim'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'

  use 'SirVer/ultisnips'

  -- AutoFormat
  use "Chiel92/vim-autoformat"

  -- colorizar
  use 'norcalli/nvim-colorizer.lua'

  -- undotree
  use 'mbbill/undotree'

  -- Colorscheme
  use "folke/tokyonight.nvim"

  -- status line
  use {'glepnir/galaxyline.nvim', branch = 'main'}

  -- buffer_line
  use 'akinsho/bufferline.nvim'

  -- dashboard
  use 'glepnir/dashboard-nvim'

  -- Telescope
  use "nvim-lua/popup.nvim"
  use "nvim-lua/plenary.nvim"
  use "nvim-telescope/telescope.nvim"
  use "nvim-telescope/telescope-media-files.nvim"
  use "AckslD/nvim-neoclip.lua"
  use {"nvim-telescope/telescope-fzf-native.nvim", run = "make"}
  use "fhill2/telescope-ultisnips.nvim"
  use {"mark-coyle/telescope-dbcli.nvim"}
  use "tom-anders/telescope-vim-bookmarks.nvim"

  -- project
  use "ahmedkhalf/project.nvim"

  -- git
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    -- tag = 'release' -- To use the latest release
  }


  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
