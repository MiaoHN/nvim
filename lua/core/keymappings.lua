vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.api.nvim_set_keymap
local opt = {
	noremap = true,
	silent = true,
}
-- disable <Space> in normal mode
map("n", "<Space>", "<NOP>", opt)

map("n", ";", ":", opt)

-- explore tree
map("n", "<Leader>e", ":NvimTreeToggle<CR>", opt)

-- hl
map("n", "<Leader><Leader>", ":set hlsearch!<CR>", opt)

-- window movement
map("n", "<Leader>h", "<C-w>h", opt)
map("n", "<Leader>j", "<C-w>j", opt)
map("n", "<Leader>k", "<C-w>k", opt)
map("n", "<Leader>l", "<C-w>l", opt)

-- switch
map("n", "<TAB>", ":bnext<CR>", opt)
map("n", "<S-TAB>", ":bprevious<CR>", opt)

-- move selected line /block of the text in visual mode
map("x", "K", ":move '<-2<CR>gv-gv'", opt)
map("x", "J", ":move '>+1<CR>gv-gv'", opt)

-- Esc
map("i", "jj", "<Esc>", opt)

-- better movement
map("n", "J", "5j", opt)
map("n", "K", "5k", opt)

-- tab complete
map("i", "<expr><TAB>", 'pumvisible() ? "\\<c-n>" : "\\<TAB>"', opt)

-- undo
map("n", "U", ":UndotreeToggle<CR>", opt)

-- markdown
-- map('n', '<C-V>', ':PasteImg<CR>', opt)

-- comment quicker
map("n", "<Leader>c", ":CommentToggle<CR>", opt)
map("v", "<Leader>c", ":CommentToggle<CR>", opt)
map("x", "<Leader>c", ":CommentToggle<CR>", opt)

-- Vista
map("n", "<Leader>v", ":Vista!!<CR>", opt)

-- bookmarks
map("n", "<Leader>b", ":BookmarkToggle<CR>", opt)
map("n", "<Leader>B", ":BookmarkShowAll<CR>", opt)

-- coc.nvim
