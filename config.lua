vim.opt.showmatch = true
vim.opt.autowrite  = true
vim.opt.listchars = {eol = '↲', tab = '▸ ', trail = '¬'}
-- vim.opt.foldmethod="expr"
-- vim.opt.foldexpr="nvim_treesitter#foldexpr()"
vim.opt.relativenumber = true
vim.opt.undofile = false
vim.opt.spell = true
vim.opt.spelllang = "en"
vim.opt.startofline = true
vim.opt.scrolloff = 0
vim.opt.wrap = false
vim.opt.mouse = "a"

-- general
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.lint_on_save = true
lvim.transparent_window = false

-- additional plugins
require('moreplugs')
-- auto commands
require('autocmds')
vim.cmd('source ~/.config/lvim/vim/autocmd.vim')
-- layout/UI/look and feel
require('looknfeel')
-- key mappings
require('mappings')
-- languages, spelling, grammar
-- require('lanngram')

-- builtin settings
lvim.builtin.lualine.active = true
lvim.builtin.dap.active = true
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.bufferline.active = true
lvim.builtin.nvimtree.active = false

-- Treesitter
lvim.builtin.treesitter.ensure_installed = "maintained"
lvim.builtin.treesitter.autotag.enable = true
lvim.builtin.treesitter.playground.enable = true
lvim.builtin.treesitter.highlight.enabled = true

-- LSP
-- lvim.lsp.diagnostics.virtual_text = false
-- lvim.lsp.automatic_servers_installation = false

