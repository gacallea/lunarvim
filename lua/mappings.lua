-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"

-- function keys row keymapping
lvim.keys.normal_mode["<Esc>"] = ":nohlsearch<cr>" -- clear search highlight
lvim.keys.normal_mode["<F1>"] = ":Dash<cr>" -- dash docs app
lvim.keys.normal_mode["<F2>"] = ":MinimapToggle<cr>" -- toogle minimap
-- GOTO PREVIEW
lvim.keys.normal_mode["<F5>"] = "<cmd>lua require('goto-preview').close_all_win()<cr>"
lvim.keys.normal_mode["<F6>"] = "<cmd>lua require('goto-preview').goto_preview_definition()<cr>"
lvim.keys.normal_mode["<F7>"] = "<cmd>lua require('goto-preview').goto_preview_implementation()<cr>"
-- TROUBLE
lvim.keys.normal_mode["<F8>"] = ":TroubleToggle<cr>"
-- TELESCOPE
lvim.keys.normal_mode["<F10>"] = ":Telescope lsp_references<cr>"
lvim.keys.normal_mode["<F11>"] = ":Telescope lsp_document_symbols<cr>"
lvim.keys.normal_mode["<F12>"] = ":Telescope lsp_dynamic_workspace_symbols<cr>"

-- barbar
lvim.keys.normal_mode["<S-h>"] = nil
lvim.keys.normal_mode["<S-l>"] = nil
lvim.keys.normal_mode["<leader><Left>"] = ":BufferLineCyclePrev<cr>"
lvim.keys.normal_mode["<leader><Right>"] = ":BufferLineCycleNext<cr>"
lvim.keys.normal_mode["<leader><Down>"] = ":BufferKill<cr>"

-- TELESCOPE
lvim.builtin.which_key.mappings["T"] = {
  name = "+Telescope",
  P = { "<cmd>Telescope projects<cr>", "Projects" },
  g = { "<cmd>Telescope live_grep<cr>", "Grep" },
  m = { "<cmd>Telescope man_pages<cr>", "man pages" },
}

-- TELESCOPE FILE_BROWSER
lvim.builtin.which_key.mappings["e"] = { "<cmd>Telescope file_browser<cr>", "Explorer", }

-- octo extension
lvim.builtin.telescope.extensions.octo = true

-- TROUBLE
lvim.builtin.which_key.mappings["t"] = {
  name = "+Trouble",
  r = { "<cmd>Trouble lsp_references<cr>", "References" },
  f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
  d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
  q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
  l = { "<cmd>Trouble loclist<cr>", "LocationList" },
  w = { "<cmd>Trouble workspace_diagnostics<cr>", "Wordspace Diagnostics" },
}

-- additional commands for ["g"]
lvim.builtin.which_key.mappings["gf"] = { "<cmd>Telescope git_files<cr>", "Git Files", }
lvim.builtin.which_key.mappings["gg"] = { "<cmd>LazyGit<cr>", "LazyGit", }
lvim.builtin.which_key.mappings["gd"] = { "<cmd>DiffviewOpen -uno<cr>", "Git Diff", }
lvim.builtin.which_key.mappings["gh"] = { "<cmd>DiffviewFileHistory<cr>", "File History", }
lvim.builtin.which_key.mappings["gy"] = { "<cmd>lua require\"gitlinker\".get_buf_range_url(\"n\", {action_callback = require\"gitlinker.actions\".open_in_browser})<cr>', {silent = true})", "GitLinker" }
lvim.builtin.which_key.vmappings["gy"] = { ":lua require\"gitlinker\".get_buf_range_url(\"v\", {action_callback = require\"gitlinker.actions\".open_in_browser})<cr>', {})", "GitLinker" }


-- GIST
lvim.builtin.which_key.mappings["G"] = {
  name = "Gist",
  a = { "<cmd>Gist -b -a<cr>", "Create Anon" },
  d = { "<cmd>Gist -d<cr>", "Delete" },
  f = { "<cmd>Gist -f<cr>", "Fork" },
  g = { "<cmd>Gist -b<cr>", "Create" },
  l = { "<cmd>Gist -l<cr>", "List" },
  p = { "<cmd>Gist -b -p<cr>", "Create Private" },
}

-- REPLACE
lvim.builtin.which_key.mappings["r"] = {
  name = "Replace",
  r = { "<cmd>lua require('spectre').open()<cr>", "Replace" },
  w = { "<cmd>lua require('spectre').open_visual({select_word=true})<cr>", "Replace Word" },
  f = { "<cmd>lua require('spectre').open_file_search()<cr>", "Replace Buffer" },
}

