-- Additional Plugins
lvim.plugins = {
    { "marko-cerovac/material.nvim" },
    { "rizzatti/dash.vim" },
    { "lewis6991/spellsitter.nvim" },
    {
        "folke/trouble.nvim",
        cmd = "TroubleToggle"
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        event = "BufRead",
        setup = function()
          vim.g.indentLine_enabled = 1
          vim.g.indent_blankline_char = "▏"
          vim.g.indent_blankline_filetype_exclude = {"help", "terminal", "dashboard"}
          vim.g.indent_blankline_buftype_exclude = {"terminal"}
          vim.g.indent_blankline_show_trailing_blankline_indent = false
          vim.g.indent_blankline_show_first_indent_level = false
        end
    },
    {
        "sindrets/diffview.nvim",
        event = "BufRead"
    },
    {
        "f-person/git-blame.nvim",
        event = "BufRead",
        config = function()
          vim.cmd "highlight default link gitblame SpecialComment"
          vim.g.gitblame_enabled = 0
          vim.g.gitblame_message_template = '<summary> • <date> • <author> • <sha>'
        end,
    },
    {
        "ruifm/gitlinker.nvim",
        event = "BufRead",
        config = function()
        require("gitlinker").setup {
              opts = {
                -- remote = 'github', -- force the use of a specific remote
                  -- adds current line nr in the url for normal mode
                  add_current_line_on_normal_mode = true,
                -- callback for what to do with the url
                  action_callback = require("gitlinker.actions").open_in_browser,
                -- print the url after performing the action
                  print_url = false,
                -- mapping to call url generation
                  mappings = "<leader>gy",
              },
            }
        end,
        requires = "nvim-lua/plenary.nvim",
    },
    {
        "pwntester/octo.nvim",
        event = "BufRead",
  },
    {
        "mattn/vim-gist",
        event = "BufRead",
        requires = "mattn/webapi-vim"
    },
}

