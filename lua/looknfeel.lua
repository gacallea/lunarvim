-- some necessary builtin settings
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.galaxyline.active = false

--  Material Theme
vim.g.material_italic_comments = true
vim.g.material_borders = true
vim.g.material_style = "palenight"
lvim.colorscheme = "material"

-- Lualine
-- Color table for highlights
local colors = {
  bg = '#202328',
  fg = '#bbc2cf',
  yellow = '#ECBE7B',
  cyan = '#008080',
  darkblue = '#081633',
  green = '#98be65',
  orange = '#FF8800',
  violet = '#a9a1e1',
  magenta = '#c678dd',
  blue = '#51afef',
  red = '#ec5f67'
}

 -- Lsp server name .
local function lspservername()
  local msg = 'No Active Lsp'
  local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
  local clients = vim.lsp.get_active_clients()
  if next(clients) == nil then return nil end
  for _, client in ipairs(clients) do
    local filetypes = client.config.filetypes
    if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
      return client.name
    end
  end
  return msg
end

-- Lualine setup
require'lualine'.setup {
  options = {
    theme = 'material-nvim'
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff',
      {lspservername, icon = ' '},
      {'diagnostics', sources = {'nvim_lsp'},
        sections = {'error', 'warn', 'info', 'hint'},
        symbols = {error = ' ', warn = ' ', info = ' ', hint = ''},
        color_error = {fg = colors.red},
        color_warn = {fg = colors.yellow},
        color_info = {fg = colors.cyan},
        color_hint = {fg = colors.green},
      }
    },
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  tabline = {},
  extensions = {}
}

-- NVimTree
lvim.builtin.nvimtree.side = "left"
lvim.builtin.nvimtree.width = 50
lvim.builtin.nvimtree.show_icons.tree_width = 50
lvim.builtin.nvimtree.show_icons.git = 1
vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_highlight_opened_files = 1
vim.g.nvim_tree_add_trailing = 1
