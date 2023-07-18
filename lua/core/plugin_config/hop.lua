require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }

-- remap leader-w to hop word, leader-l to hop line and leader-jj to hop character
vim.api.nvim_set_keymap('n', '<leader>jw', "<cmd>HopWord<cr>", {silent = true})
vim.api.nvim_set_keymap('n', '<leader>jl', "<cmd>HopLine<cr>", {silent = true})
vim.api.nvim_set_keymap('n', '<leader>jj', "<cmd>HopChar1<cr>", {silent = true})
