-- disable <Space> in normal mode
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap=true,silent=true })

vim.g.mapleader = ' '

-- explore tree
vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', { noremap=true,silent=true })

-- hl
vim.api.nvim_set_keymap('n', '<Leader><Leader>', ':set hlsearch!<CR>', { noremap=true,silent=true })

-- window movement
vim.api.nvim_set_keymap('n', '<Leader>h', '<C-w>h', { noremap=true,silent=true })
vim.api.nvim_set_keymap('n', '<Leader>j', '<C-w>j', { noremap=true,silent=true })
vim.api.nvim_set_keymap('n', '<Leader>k', '<C-w>k', { noremap=true,silent=true })
vim.api.nvim_set_keymap('n', '<Leader>l', '<C-w>l', { noremap=true,silent=true })

-- switch
vim.api.nvim_set_keymap('n', '<TAB>', ':bnext<CR>', { noremap=true,silent=true })
vim.api.nvim_set_keymap('n', '<S-TAB>', ':bprevious<CR>', { noremap=true,silent=true })

-- move selected line /block of the text in visual mode
vim.api.nvim_set_keymap('x', 'K', ':move \'<-2<CR>gv-gv\'', { noremap=true,silent=true })
vim.api.nvim_set_keymap('x', 'J', ':move \'>+1<CR>gv-gv\'', { noremap=true,silent=true })

-- Esc
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap=true,silent=true })

-- better movement
vim.api.nvim_set_keymap('n', 'J', '5j', { noremap=true,silent=true })
vim.api.nvim_set_keymap('n', 'K', '5k', { noremap=true,silent=true })

-- tab complete
vim.api.nvim_set_keymap('i', '<expr><TAB>', 'pumvisible() ? \"\\<c-n>\" : \"\\<TAB>\"', { noremap = true,silent = true })

-- undo
vim.api.nvim_set_keymap('n', 'U', ':UndotreeToggle<CR>', { noremap = true,silent = true })

-- markdown
-- vim.api.nvim_set_keymap('n', '<C-V>', ':PasteImg<CR>', { noremap = true,silent = true })

-- comment quicker
vim.api.nvim_set_keymap('n', '<Leader>c', ':CommentToggle<CR>', { noremap = true,silent = true })
vim.api.nvim_set_keymap('v', '<Leader>c', ':CommentToggle<CR>', { noremap = true,silent = true })
vim.api.nvim_set_keymap('x', '<Leader>c', ':CommentToggle<CR>', { noremap = true,silent = true })

-- Vista
vim.api.nvim_set_keymap('n', '<Leader>v', ':Vista!!<CR>', { noremap = true,silent = true })

-- lazygit
vim.api.nvim_set_keymap('n', '<Leader>g', ':LazyGit<CR>', { noremap = true,silent = true })

-- bookmarks
vim.api.nvim_set_keymap('n', '<Leader>b', ':BookmarkToggle<CR>',  { noremap = true,silent = true })
vim.api.nvim_set_keymap('n', '<Leader>B', ':BookmarkShowAll<CR>', { noremap = true,silent = true })

-- coc.nvim


