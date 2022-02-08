vim.opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
vim.opt.cmdheight = 2 -- more space in the neovim command line for displaying messages
vim.opt.smartcase = true -- smart case
vim.opt.smartindent = true -- make indenting smarter again
vim.opt.splitbelow = true -- force all horizontal splits to go below current window
vim.opt.splitright = true -- force all vertical splits to go to the right of current window
vim.opt.swapfile = false -- creates a swapfile
vim.opt.termguicolors = true -- set term gui colors (most terminals support this)
vim.opt.expandtab = true -- convert tabs to spaces
vim.opt.shiftwidth = 2 -- the number of spaces inserted for each indentation
vim.opt.tabstop = 2 -- insert 2 spaces for a tab
vim.opt.cursorline = true -- highlight the current line
vim.opt.number = true -- set numbered lines
vim.opt.relativenumber = false -- set relative numbered lines
vim.opt.numberwidth = 4 -- set number column width to 2 {default 4}
vim.opt.signcolumn = "yes" -- always show the sign column otherwise it would shift the text each time
vim.opt.wrap = false -- display lines as one long line
vim.opt.showmatch = true
vim.opt.autowrite  = true
vim.opt.listchars = {eol = '↲', tab = '▸ ', trail = '¬'}
-- vim.opt.foldmethod="expr"
-- vim.opt.foldexpr="nvim_treesitter#foldexpr()"
vim.opt.undofile = false
vim.opt.spell = true
vim.opt.spelllang = "en"
vim.opt.startofline = true
vim.opt.scrolloff = 0
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
lvim.lsp.diagnostics.virtual_text = false
lvim.lsp.automatic_servers_installation = true

