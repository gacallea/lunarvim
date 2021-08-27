vim.o.showmatch = true
vim.o.autowrite  = true
vim.o.colorcolumn="80"
vim.opt.listchars = {eol = '↲', tab = '▸ ', trail = '¬'}
-- these don't work in lvim???
vim.o.foldmethod="expr"
vim.o.foldexpr="nvim_treesitter#foldexpr()"
vim.o.relativenumber = true
vim.o.undofile = false
vim.o.spell = true
vim.o.spelllang = "en"
vim.o.startofline = true

-- general
lvim.format_on_save = true
lvim.lint_on_save = true

-- additional plugins
require('moreplugs')
-- layout/UI/look and feel
require('looknfeel')
-- key mappings
require('mappings')
-- auto commands
require('autocmds')
vim.cmd('source ~/.config/lvim/vim/autocmd.vim')
-- languages, spelling, grammar
-- require('lanngram')

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = "maintained"
lvim.builtin.treesitter.ignore_install = {}
lvim.builtin.treesitter.highlight.enabled = true

-- generic LSP settings
-- you can set a custom on_attach function that will be used for all the language servers
-- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- set a formatter if you want to override the default lsp one (if it exists)
-- lvim.lang.python.formatters = {
--   {
--     exe = "black",
--     args = {}
--   }
-- }
-- set an additional linter
-- lvim.lang.python.linters = {
--   {
--     exe = "flake8",
--     args = {}
--   }
-- }

