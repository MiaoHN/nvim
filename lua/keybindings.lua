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

-- Telescope
map("n", "<C-p>", ":Telescope find_files<CR>", opt)
map("n", "<LEADER>f", ":Telescope find_files<CR>", opt)
map("n", "<LEADER>g", ":Telescope live_grep<CR>", opt)

-- bufferline tab
map("n", "<Tab>", ":BufferLineCyclePrev<CR>",opt)
map("n", "<S-Tab>", ":BufferLineCycleNext<CR>",opt)

pluginKeys = {}

-- nvim-cmp 自动补全
pluginKeys.cmp = function(cmp)
  return {
    -- 上一个
    ['<C-k>'] = cmp.mapping.select_prev_item(),
    -- 下一个
    ['<C-j>'] = cmp.mapping.select_next_item(),
    -- 出现补全
    ['<A-.>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    -- 取消
    ['<A-,>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    -- 确认
    -- Accept currently selected item. If none selected, `select` first item.
    -- Set `select` to `false` to only confirm explicitly selected items.
    ['<CR>'] = cmp.mapping.confirm({
      select = true ,
      behavior = cmp.ConfirmBehavior.Replace
    }),
    -- ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
    ['<C-u>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
  }
end

-- lsp 回调函数快捷键设置
pluginKeys.maplsp = function(mapbuf)
  -- rename
  mapbuf('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opt)
  -- code action
  mapbuf('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opt)
  -- go xx
  mapbuf('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opt)
  mapbuf('n', 'gh', '<cmd>lua vim.lsp.buf.hover()<CR>', opt)
  mapbuf('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opt)
  mapbuf('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opt)
  mapbuf('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opt)
  -- diagnostic
  mapbuf('n', 'go', '<cmd>lua vim.diagnostic.open_float()<CR>', opt)
  mapbuf('n', 'gp', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opt)
  mapbuf('n', 'gn', '<cmd>lua vim.diagnostic.goto_next()<CR>', opt)
  -- mapbuf('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opt)
  -- leader + =
  mapbuf('n', '<leader>=', '<cmd>lua vim.lsp.buf.formatting()<CR>', opt)
  -- mapbuf('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opt)
  -- mapbuf('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opt)
  -- mapbuf('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opt)
  -- mapbuf('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opt)
  -- mapbuf('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opt)
end

-- gitsigns
pluginKeys.gitsigns = {
  -- Default keymap options
  noremap = true,

  ["n ]c"] = { expr = true, "&diff ? ']c' : '<cmd>Gitsigns next_hunk<CR>'" },
  ["n [c"] = { expr = true, "&diff ? '[c' : '<cmd>Gitsigns prev_hunk<CR>'" },

  ["n <leader>hs"] = "<cmd>Gitsigns stage_hunk<CR>",
  ["v <leader>hs"] = ":Gitsigns stage_hunk<CR>",
  ["n <leader>hu"] = "<cmd>Gitsigns undo_stage_hunk<CR>",

  ["n <leader>hr"] = "<cmd>Gitsigns reset_hunk<CR>",
  ["v <leader>hr"] = ":Gitsigns reset_hunk<CR>",
  ["n <leader>hR"] = "<cmd>Gitsigns reset_buffer<CR>",

  ["n <leader>hp"] = "<cmd>Gitsigns preview_hunk<CR>",
  ["n <leader>hb"] = '<cmd>lua require"gitsigns".blame_line{full=true}<CR>',
  ["n <leader>hS"] = "<cmd>Gitsigns stage_buffer<CR>",
  ["n <leader>hU"] = "<cmd>Gitsigns reset_buffer_index<CR>",

  -- Text objects
  ["o ih"] = ":<C-U>Gitsigns select_hunk<CR>",
  ["x ih"] = ":<C-U>Gitsigns select_hunk<CR>",
}


return pluginKeys
