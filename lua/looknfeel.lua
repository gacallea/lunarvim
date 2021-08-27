--  Material Theme
lvim.builtin.galaxyline.active = false
lvim.builtin.bufferline.active = false
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
        color_error = {colors.red, color_warn = colors.yellow, color_info = colors.cyan},
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

-- BufferLine
require('bufferline').setup {
  options = {
    numbers = "buffer_id",
    number_style = "",
    diagnostics = false,
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        highlight = "Directory",
        text_align = "center"
      }
    },
    show_buffer_icons = true, -- disable filetype icons for buffers
    show_buffer_close_icons = true,
    show_close_icon = true,
    show_tab_indicators = true,
    persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
    separator_style = "thick",
    enforce_regular_tabs = false,
    always_show_bufferline = true,
    sort_by = 'id'
  }
}

-- NVimTree
vim.g.nvim_tree_width = 50
vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_highlight_opened_files = 1
vim.g.nvim_tree_add_trailing = 1
vim.g.nvim_tree_group_empty = 1
vim.g.nvim_tree_auto_open = 1
