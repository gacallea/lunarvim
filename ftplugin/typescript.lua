-- exe value can be "prettier", "prettierd", "eslint", or "eslint_d"
lvim.lang.typescript.formatters = { { exe = "eslint"}, { exe = "prettier" } }
lvim.lang.typescriptreact.formatters = lvim.lang.typescript.formatters
-- exe value can be "eslint" or "eslint_d"
lvim.lang.typescript.linters = { { exe = "eslint" } }
lvim.lang.typescriptreact.linters = lvim.lang.typescript.linters

