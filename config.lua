vim.o.showmatch = true
vim.o.autowrite  = true
vim.o.colorcolumn="80"
vim.opt.listchars = {eol = '↲', tab = '▸ ', trail = '¬'}
-- these don't work in lvim???
vim.o.foldmethod="expr"
vim.o.foldexpr="nvim_treesitter#foldexpr()"
vim.o.relativenumber = true
vim.o.undofile = false
-- vim.o.spell = true
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

-- Compe
lvim.builtin.compe.active = true
lvim.builtin.compe.autocomplete = true
lvim.builtin.autopairs.active = true

-- Treesitter syntax and parsing
-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = "maintained"
lvim.builtin.treesitter.ignore_install = {}
lvim.builtin.treesitter.highlight.enabled = true

-- DAP debugger
lvim.builtin.dap.active = true
lvim.builtin.dap.install = "python_dbg"

-- Language Server
