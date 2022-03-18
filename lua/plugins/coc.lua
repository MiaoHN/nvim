local api = vim.api
local fn = vim.fn

vim.g.coc_snippet_next = "<C-j>"
vim.g.coc_snippet_prev = "<C-k>"
vim.g.coc_disable_transparent_cursor = 1

vim.g.coc_global_extensions = {
	"coc-vimlsp",
	"coc-clangd",
	"coc-css",
	"coc-emmet",
	"coc-eslint",
	"coc-flutter",
	"coc-go",
	"coc-html",
	"coc-json",
	"coc-marketplace",
	"coc-pyright",
	"coc-prettier",
	"coc-sh",
	"coc-snippets",
	"coc-translator",
	"coc-tsserver",
	"coc-vetur",
	"coc-yaml",
	"coc-sumneko-lua",
	"coc-stylua",
	"coc-dictionary",
	"coc-emoji",
	"coc-explorer",
	"coc-html-css-support",
}

local t = function(str)
	return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
	local col = fn.col(".") - 1
	return col == 0 or fn.getline("."):sub(col, col):match("%s")
end

-- Use (s-)tab to move back
_G.tab_complete = function()
	if fn.pumvisible() == 1 then
		return t("<C-n>")
	elseif check_back_space() then
		return t("<Tab>")
	else
		return fn["coc#refresh"]()
	end
end

_G.s_tab_complete = function()
	if fn.pumvisible() == 1 then
		return t("<C-p>")
	else
		return t("<S-Tab>")
	end
end

local keybind = mhn.keybind
local cmd = keybind.cmd
local cr = keybind.cr
keybind.load_maps({
	-- (s-)tab
	["is|<Tab>"] = cmd([[v:lua.tab_complete()]]):silent():expr():noremap(),
	["is|<S-Tab>"] = cmd([[v:lua.s_tab_complete()]]):silent():expr():noremap(),
	["i|<cr>"] = cmd([[pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]])
		:silent()
		:expr()
		:noremap(),
	-- Use '[g' and ']g' to navigate diagnostics
	-- Use ':CocDiagnostics' to get all diagnostics of current buffer in location list
	["n|[g"] = cmd("<Plug>(coc-disgnostic-prev)"):silent(),
	["n|]g"] = cmd("<Plug>(coc-disgnostic-next)"):silent(),
	-- Symbol renaming
	["n|<LEADER>rn"] = cmd("<Plug>(coc-rename)"):silent(),
	-- " Jump definition in other window
	-- Remap keys for gotos
	["n|gd"] = cmd("<Plug>(coc-definition)"):silent(),
	["n|gy"] = cmd("<Plug>(coc-type-definition)"):silent(),
	["n|gi"] = cmd("<Plug>(coc-implementation)"):silent(),
	["n|gr"] = cmd("<Plug>(coc-references)"):silent(),
	-- Formating
	["n|<leader>f"] = cmd("<Plug>(coc-format)"):silent(),
	["x|<leader>f"] = cmd("<Plug>(coc-format-selected)"):silent(),
})
