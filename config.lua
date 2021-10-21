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
vim.opt.scrolloff = 0
vim.opt.wrap = false

-- general
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.lint_on_save = true
lvim.transparent_window = false

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

-- builtin settings
lvim.builtin.lualine.active = true
lvim.builtin.dap.active = true
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.bufferline.active = true

-- Treesitter
lvim.builtin.treesitter.ensure_installed = "maintained"
lvim.builtin.treesitter.ignore_install = {}
lvim.builtin.treesitter.autotag.enable = true
lvim.builtin.treesitter.playground.enable = true
lvim.builtin.treesitter.highlight.enabled = true

-- LSP
lvim.lsp.diagnostics.virtual_text = false

-- Languages
-- Python
lvim.lang.python.formatters = { { exe = "black" } }
lvim.lang.python.linters = { { exe = "flake8" } }
-- Javascript
lvim.lang.javascript.formatters = { { exe = "prettier" } }
lvim.lang.javascriptreact.formatters = lvim.lang.javascript.formatters
lvim.lang.javascript.linters = { { exe = "eslint" } }
lvim.lang.javascriptreact.linters = lvim.lang.javascript.linters
-- Typescript
-- exe value can be "prettier", "prettierd", "eslint", or "eslint_d"
lvim.lang.typescript.formatters = { { exe = "prettier" } }
lvim.lang.typescriptreact.formatters = lvim.lang.typescript.formatters
-- exe value can be "eslint" or "eslint_d"
lvim.lang.typescript.linters = { { exe = "eslint" } }
lvim.lang.typescriptreact.linters = lvim.lang.typescript.linters
-- JSON
lvim.lang.json.formatters = { { exe = 'prettier' } }
