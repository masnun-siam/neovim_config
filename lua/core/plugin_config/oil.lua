require("oil").setup({
  keymaps = {
    ["<S-h>"] = "actions.parent",
    ["<S-l>"] = "actions.select",
    ["q"] = "actions.close",
  },
})

vim.keymap.set("n", "-", require("oil").open, { desc = "Open parent directory" })
vim.keymap.set("n", "sf", require("oil").open, { desc = "Open parent directory" })
