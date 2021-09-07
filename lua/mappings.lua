-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"

-- generic keymapping
lvim.keys.normal_mode["<F1>"] = ":<Esc>"
lvim.keys.normal_mode["<F2>"] = ":NvimTreeToggle<cr>"
lvim.keys.normal_mode["<Esc>"] = ":nohlsearch<cr>"

-- unmap a default keymapping
-- lvim.keys.normal_mode["<C-Up>"] = ""

-- edit a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>"

-- barbar
lvim.keys.normal_mode["<S-h>"] = nil
lvim.keys.normal_mode["<S-l>"] = nil
lvim.keys.normal_mode["<leader><Left>"] = ":BufferPrevious<cr>"
lvim.keys.normal_mode["<leader><Right>"] = ":BufferNext<cr>"
lvim.keys.normal_mode["<leader><Down>"] = ":BufferClose<cr>"

-- packer
--lvim.keys.normal_mode["<leader>ps"] = ":PackerSync<cr>"

-- dash docs app
lvim.keys.normal_mode["<leader>d"] = ":Dash<cr>"

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- lvim.builtin.telescope.on_config_done = function()
--   local actions = require "telescope.actions"
--   -- for input mode
--   lvim.builtin.telescope.defaults.mappings.i["<C-j>"] = actions.move_selection_next
--   lvim.builtin.telescope.defaults.mappings.i["<C-k>"] = actions.move_selection_previous
--   lvim.builtin.telescope.defaults.mappings.i["<C-n>"] = actions.cycle_history_next
--   lvim.builtin.telescope.defaults.mappings.i["<C-p>"] = actions.cycle_history_prev
--   -- for normal mode
--   lvim.builtin.telescope.defaults.mappings.n["<C-j>"] = actions.move_selection_next
--   lvim.builtin.telescope.defaults.mappings.n["<C-k>"] = actions.move_selection_previous
-- end

-- Use which-key to add extra bindings with the leader-key prefix
lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }

lvim.builtin.which_key.mappings["t"] = {
  name = "+Trouble",
  r = { "<cmd>Trouble lsp_references<cr>", "References" },
  f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
  d = { "<cmd>Trouble lsp_document_diagnostics<cr>", "Diagnosticss" },
  q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
  l = { "<cmd>Trouble loclist<cr>", "LocationList" },
  w = { "<cmd>Trouble lsp_workspace_diagnostics<cr>", "Diagnosticss" },
}

