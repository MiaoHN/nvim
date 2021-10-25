-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/miaohn/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/miaohn/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/miaohn/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/miaohn/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/miaohn/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/miaohn/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  ["bufferline.nvim"] = {
    loaded = true,
    path = "/home/miaohn/.local/share/nvim/site/pack/packer/start/bufferline.nvim"
  },
  ["clipboard-image.nvim"] = {
    loaded = true,
    path = "/home/miaohn/.local/share/nvim/site/pack/packer/start/clipboard-image.nvim"
  },
  ["cmp-calc"] = {
    loaded = true,
    path = "/home/miaohn/.local/share/nvim/site/pack/packer/start/cmp-calc"
  },
  ["cmp-emoji"] = {
    loaded = true,
    path = "/home/miaohn/.local/share/nvim/site/pack/packer/start/cmp-emoji"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/miaohn/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/miaohn/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/miaohn/.local/share/nvim/site/pack/packer/start/cmp-path"
  },
  ["cmp-spell"] = {
    loaded = true,
    path = "/home/miaohn/.local/share/nvim/site/pack/packer/start/cmp-spell"
  },
  ["cmp-treesitter"] = {
    loaded = true,
    path = "/home/miaohn/.local/share/nvim/site/pack/packer/start/cmp-treesitter"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    path = "/home/miaohn/.local/share/nvim/site/pack/packer/start/dashboard-nvim"
  },
  ["fcitx5.vim"] = {
    loaded = true,
    path = "/home/miaohn/.local/share/nvim/site/pack/packer/start/fcitx5.vim"
  },
  ["galaxyline.nvim"] = {
    loaded = true,
    path = "/home/miaohn/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/miaohn/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["glow.nvim"] = {
    loaded = true,
    path = "/home/miaohn/.local/share/nvim/site/pack/packer/start/glow.nvim"
  },
  ["lazygit.nvim"] = {
    loaded = true,
    path = "/home/miaohn/.local/share/nvim/site/pack/packer/start/lazygit.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/miaohn/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["markdown-preview.nvim"] = {
    config = { "vim.call('mkdp#util#install')" },
    loaded = true,
    path = "/home/miaohn/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim"
  },
  ["md-img-paste.vim"] = {
    loaded = true,
    path = "/home/miaohn/.local/share/nvim/site/pack/packer/start/md-img-paste.vim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/miaohn/.local/share/nvim/site/pack/packer/start/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/miaohn/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-comment"] = {
    loaded = true,
    path = "/home/miaohn/.local/share/nvim/site/pack/packer/start/nvim-comment"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/home/miaohn/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/miaohn/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-neoclip.lua"] = {
    loaded = true,
    path = "/home/miaohn/.local/share/nvim/site/pack/packer/start/nvim-neoclip.lua"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/miaohn/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/miaohn/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/miaohn/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/miaohn/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["project.nvim"] = {
    loaded = true,
    path = "/home/miaohn/.local/share/nvim/site/pack/packer/start/project.nvim"
  },
  ["simple-wiki.nvim"] = {
    loaded = true,
    path = "/home/miaohn/.local/share/nvim/site/pack/packer/start/simple-wiki.nvim"
  },
  ["telescope-dbcli.nvim"] = {
    loaded = true,
    path = "/home/miaohn/.local/share/nvim/site/pack/packer/start/telescope-dbcli.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/miaohn/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/home/miaohn/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim"
  },
  ["telescope-ultisnips.nvim"] = {
    loaded = true,
    path = "/home/miaohn/.local/share/nvim/site/pack/packer/start/telescope-ultisnips.nvim"
  },
  ["telescope-vim-bookmarks.nvim"] = {
    loaded = true,
    path = "/home/miaohn/.local/share/nvim/site/pack/packer/start/telescope-vim-bookmarks.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/miaohn/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    loaded = true,
    path = "/home/miaohn/.local/share/nvim/site/pack/packer/start/todo-comments.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/miaohn/.local/share/nvim/site/pack/packer/start/tokyonight.nvim"
  },
  ultisnips = {
    loaded = true,
    path = "/home/miaohn/.local/share/nvim/site/pack/packer/start/ultisnips"
  },
  undotree = {
    loaded = true,
    path = "/home/miaohn/.local/share/nvim/site/pack/packer/start/undotree"
  },
  ["vim-autoformat"] = {
    loaded = true,
    path = "/home/miaohn/.local/share/nvim/site/pack/packer/start/vim-autoformat"
  },
  ["vim-markdown-toc"] = {
    loaded = true,
    path = "/home/miaohn/.local/share/nvim/site/pack/packer/start/vim-markdown-toc"
  },
  ["vim-monokai"] = {
    loaded = true,
    path = "/home/miaohn/.local/share/nvim/site/pack/packer/start/vim-monokai"
  },
  ["vim-table-mode"] = {
    loaded = true,
    path = "/home/miaohn/.local/share/nvim/site/pack/packer/start/vim-table-mode"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: markdown-preview.nvim
time([[Config for markdown-preview.nvim]], true)
vim.call('mkdp#util#install')
time([[Config for markdown-preview.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
