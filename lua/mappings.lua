
lvim.leader = "space"

-- generic keymapping
lvim.keys.normal_mode["<F1>"] = ":<Esc>"
lvim.keys.normal_mode["<F2>"] = ":NvimTreeToggle<cr>"
lvim.keys.normal_mode["<Esc>"] = ":nohlsearch<cr>"

-- barbar
lvim.keys.normal_mode["<S-h>"] = ":BufferPrevious<cr>"
lvim.keys.normal_mode["<S-l>"] = ":BufferNext<cr>"
lvim.keys.normal_mode["<S-c>"] = ":BufferClose<cr>"

-- packer
lvim.keys.normal_mode["<leader>ps"] = ":PackerSync<cr>"

-- unmap a default keymapping
-- lvim.keys.normal_mode["<C-Up>"] = ""
-- edit a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>"

-- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>lua require'telescope'.extensions.project.project{}<CR>", "Projects" }
-- lvim.builtin.which_key.mappings["t"] = {
--   name = "+Trouble",
--   r = { "<cmd>Trouble lsp_references<cr>", "References" },
--   f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
--   d = { "<cmd>Trouble lsp_document_diagnostics<cr>", "Diagnosticss" },
--   q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
--   l = { "<cmd>Trouble loclist<cr>", "LocationList" },
--   w = { "<cmd>Trouble lsp_workspace_diagnostics<cr>", "Diagnosticss" },
-- }

