local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  Packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'

  -- coc
  use 'neoclide/coc.nvim'

  -- vista
  use 'liuchengxu/vista.vim'

  -- cursor
  use 'mg979/vim-visual-multi'

  -- easy align
  use 'junegunn/vim-easy-align'

  -- AutoFormat
  use "Chiel92/vim-autoformat"

  -- Automatically pair
  use "jiangmiao/auto-pairs"

  -- colorizar
  use 'norcalli/nvim-colorizer.lua'

  -- Interesting todo comment
  use "folke/todo-comments.nvim"

  -- Comment quickly
  use "terrortylor/nvim-comment"

  -- undotree
  use 'mbbill/undotree'

  -- Plugins for markdown
  use "dhruvasagar/vim-table-mode"
  use {"yaocccc/markdown-preview.nvim", config = "vim.call('mkdp#util#install')"}
  use "520Matches/fcitx5.vim"
  use "ekickx/clipboard-image.nvim"
  use "rafcamlet/simple-wiki.nvim"
  use {"ellisonleao/glow.nvim", run = function()
          require("glow").download_glow()
      end}
  use 'mzlogin/vim-markdown-toc'

  use 'ferrine/md-img-paste.vim'

  -- Colorscheme
  use "folke/tokyonight.nvim"
  use 'sickill/vim-monokai'

  -- status line
  -- use {'glepnir/galaxyline.nvim', branch = 'main'}
  use 'itchyny/lightline.vim'

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

  -- bookmarks
  use 'MattesGroeger/vim-bookmarks'

  -- latex
  use 'lervag/vimtex'

  -- git
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    -- tag = 'release' -- To use the latest release
  }
  use 'kdheepak/lazygit.nvim'

  -- verilog support
  use 'vhda/verilog_systemverilog.vim'

  use 'liuchengxu/space-vim-theme'
  use 'rakr/vim-two-firewatch'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if Packer_bootstrap then
    require('packer').sync()
  end
end)