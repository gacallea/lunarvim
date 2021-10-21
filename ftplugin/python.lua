-- ~/.config/lvim/ftplugin/python.lua
local dap_install = require "dap-install"
dap_install.config("python", {})

lvim.lang.python.formatters = {{ exe = "black" }}
lvim.lang.python.linters = {{ exe = "flake8" }}
