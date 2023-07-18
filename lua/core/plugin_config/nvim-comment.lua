require('Comment').setup()

-- run autocommand
--
-- vim.cmd([[
--   augroup set-commentstring-ag
--   autocmd!
--   autocmd BufEnter *.dart,*.h :lua vim.api.nvim_buf_set_option(0, "commentstring", "// %s")
--   autocmd BufFilePost *.dart,*.h :lua vim.api.nvim_buf_set_option(0, "commentstring", "// %s")
--   augroup END
-- ]])


