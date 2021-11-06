-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- lvim.autocommands.custom_groups = {
  -- { "BufWinEnter", "*.lua", "setlocal sts=4 ts=4 sw=4" },
-- }

-- https://neovim.io/doc/user/usr_05.html#last-position-jump
-- autocmd BufReadPost *
--       \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
--       \ |   exe "normal! g`\""
--       \ | endif
