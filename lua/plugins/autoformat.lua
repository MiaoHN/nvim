vim.g.autoformat_verbosemode       = 1
vim.g.formatdef_clangformat_google = '"clang-format -style google -"'
vim.g.formatters_c                 = { "clangformat_google" }
vim.g.formatters_cpp               = { "clangformat_google" }
vim.g.formatdef_autopep8           = "'autopep8 - --range '.a:firstline.' '.a:lastline"
vim.g.formatters_python            = {'autopep8'}
