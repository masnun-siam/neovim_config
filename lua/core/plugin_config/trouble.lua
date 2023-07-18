require("trouble").setup()

-- setup trouble workspace in leader-t-w
vim.api.nvim_set_keymap("n", "<leader>tw", "<cmd>TroubleToggle<cr>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<leader>tr", "<cmd>TroubleRefresh<cr>", { noremap = true, silent = true })
