-- Material Theme
-- vim.g.material_theme_style = "default"
-- vim.g.material_theme_style = "darker"
-- vim.g.material_theme_style = "lighter"
-- vim.g.material_theme_style = "ocean"
vim.g.material_theme_style = "palenight"
lvim.colorscheme = "material"

-- Bufferline
lvim.builtin.bufferline.active = true

-- Lualine
lvim.builtin.lualine.active = true
local components = require("lvim.core.lualine.components")
lvim.builtin.lualine.style = "default"
lvim.builtin.lualine.options.theme = "material.lualine"
lvim.builtin.lualine.options.disabled_filetypes = { "dashboard", "NvimTree", "Outline" }
lvim.builtin.lualine.sections.lualine_a = { "mode" }
lvim.builtin.lualine.sections.lualine_b = { components.branch, components.diff, components.lsp, components.diagnostics }
lvim.builtin.lualine.sections.lualine_c = { components.python_env, components.filename }
lvim.builtin.lualine.sections.lualine_x = { components.treesitter, components.filetype }
lvim.builtin.lualine.sections.lualine_y = { "progress" }
lvim.builtin.lualine.sections.lualine_z = { "location" }
lvim.builtin.lualine.extensions = {"nvim-tree"}

-- NVimTree disabled. Use telescope-file-browser. This is here just in case.
lvim.builtin.nvimtree.active = false
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.width = 28
lvim.builtin.nvimtree.show_icons.tree_width = 28
lvim.builtin.nvimtree.show_icons.git = 1
lvim.builtin.nvimtree.indent_markers = 1
lvim.builtin.nvimtree.highlight_opened_files = 1
lvim.builtin.nvimtree.add_trailing = 1
lvim.builtin.nvimtree.git_hl = 1
lvim.builtin.nvimtree.group_empty = 1
lvim.builtin.nvimtree.quit_on_open = 1

-- TERMINAL
-- lvim.builtin.terminal.direction = "horizontal"
-- lvim.builtin.terminal.size = 28
-- lvim.builtin.terminal.shade_terminals = false
