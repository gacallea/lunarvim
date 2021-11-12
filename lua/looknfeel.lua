-- Material Theme
vim.g.material_style = "palenight"

require('material').setup({
	contrast = true, -- Enable contrast for sidebars, floating windows and popup menus like Nvim-Tree
	borders = true, -- Enable borders between verticaly split windows
	italics = {
		comments = true, -- Enable italic comments
		keywords = false, -- Enable italic keywords
		functions = false, -- Enable italic functions
		strings = false, -- Enable italic strings
		variables = false -- Enable italic variables
	},
	contrast_windows = { -- Specify which windows get the contrasted (darker) background
		"terminal", -- Darker terminal background
		"packer", -- Darker packer background
		"qf" -- Darker qf list background
	},
	text_contrast = {
		lighter = false, -- Enable higher contrast text for lighter style
		darker = true -- Enable higher contrast text for darker style
	},
	disable = {
		background = false, -- Prevent the theme from setting the background (NeoVim then uses your teminal background)
		term_colors = false, -- Prevent the theme from setting terminal colors
		eob_lines = false -- Hide the end-of-buffer lines
	},
	custom_highlights = {} -- Overwrite highlights with your own
})
lvim.colorscheme = "material"

-- Lualine
local components = require("lvim.core.lualine.components")
lvim.builtin.lualine.style = "default"
lvim.builtin.lualine.options.theme = "material-nvim"
lvim.builtin.lualine.options.disabled_filetypes = { "dashboard", "NvimTree", "Outline" }
lvim.builtin.lualine.sections.lualine_a = { "mode" }
lvim.builtin.lualine.sections.lualine_b = { components.branch, components.diff, components.lsp, components.diagnostics }
lvim.builtin.lualine.sections.lualine_c = { components.python_env, components.filename }
lvim.builtin.lualine.sections.lualine_x = { components.treesitter, components.filetype }
lvim.builtin.lualine.sections.lualine_y = { "progress" }
lvim.builtin.lualine.sections.lualine_z = { "location" }
lvim.builtin.lualine.extensions = {"nvim-tree"}

-- NVimTree (disabled, I use telescope)
-- lvim.builtin.nvimtree.setup.view.side = "left"
-- lvim.builtin.nvimtree.width = 28
-- lvim.builtin.nvimtree.show_icons.tree_width = 28
-- lvim.builtin.nvimtree.show_icons.git = 1
-- lvim.builtin.nvimtree.indent_markers = 1
-- lvim.builtin.nvimtree.highlight_opened_files = 1
-- lvim.builtin.nvimtree.add_trailing = 1
-- lvim.builtin.nvimtree.git_hl = 1
-- lvim.builtin.nvimtree.group_empty = 1
-- lvim.builtin.nvimtree.quit_on_open = 1

-- TERMINAL
-- lvim.builtin.terminal.direction = "horizontal"
-- lvim.builtin.terminal.size = 28
-- lvim.builtin.terminal.shade_terminals = false
