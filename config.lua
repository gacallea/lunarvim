vim.opt.showmatch = true
vim.opt.autowrite  = true
vim.opt.colorcolumn="80"
vim.opt.listchars = {eol = '↲', tab = '▸ ', trail = '¬'}
vim.opt.foldmethod="expr"
vim.opt.foldexpr="nvim_treesitter#foldexpr()"
vim.opt.relativenumber = true
vim.opt.undofile = false
vim.opt.spell = true
vim.opt.spelllang = "en"
vim.opt.startofline = true

-- general
lvim.log.level = "warn"
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
require('lanngram')

--- Compe
lvim.builtin.compe.active = true
lvim.builtin.compe.autocomplete = true
lvim.builtin.autopairs.active = true

--- DAP debugger
lvim.builtin.dap.active = true
lvim.builtin.dap.install = "python_dbg"

--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT


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
-- you can overwrite the null_ls setup table (useful for setting the root_dir function)
-- lvim.lsp.null_ls.setup = {
--   root_dir = require("lspconfig").util.root_pattern("Makefile", ".git", "node_modules"),
-- }
-- or if you need something more advanced
-- lvim.lsp.null_ls.setup.root_dir = function(fname)
--   if vim.bo.filetype == "javascript" then
--     return require("lspconfig/util").root_pattern("Makefile", ".git", "node_modules")(fname)
--       or require("lspconfig/util").path.dirname(fname)
--   elseif vim.bo.filetype == "php" then
--     return require("lspconfig/util").root_pattern("Makefile", ".git", "composer.json")(fname) or vim.fn.getcwd()
--   else
--     return require("lspconfig/util").root_pattern("Makefile", ".git")(fname) or require("lspconfig/util").path.dirname(fname)
--   end
-- end

