-- Material Theme
-- vim.g.material_style = "darker"
vim.g.material_style = "lighter"
-- vim.g.material_style = "oceanic"
-- vim.g.material_style = "palenight"
-- vim.g.material_style = "deep ocean"

require('material').setup({

	contrast = {
		sidebars = true, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
		floating_windows = true, -- Enable contrast for floating windows
		line_numbers = true, -- Enable contrast background for line numbers
		sign_column = true, -- Enable contrast background for the sign column
		cursor_line = true, -- Enable darker background for the cursor line
		non_current_windows = true, -- Enable darker background for non-current windows
		popup_menu = false, -- Enable lighter background for the popup menu
	},

	italics = {
		comments = true, -- Enable italic comments
		keywords = false, -- Enable italic keywords
		functions = false, -- Enable italic functions
		strings = false, -- Enable italic strings
		variables = false -- Enable italic variables
	},

	contrast_filetypes = { -- Specify which filetypes get the contrasted (darker) background
		"terminal", -- Darker terminal background
		"packer", -- Darker packer background
		"qf" -- Darker qf list background
	},

	high_visibility = {
		lighter = false, -- Enable higher contrast text for lighter style
		darker = false -- Enable higher contrast text for darker style
	},

	disable = {
		borders = false, -- Disable borders between verticaly split windows
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
