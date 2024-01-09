require("mason-lspconfig").setup()

local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

require('lspsaga').setup({
  code_action_icon = "",
  symbol_in_winbar = {
    in_custom = false,
    enable = true,
    separator = ' ',
    show_file = true,
    file_formatter = ""
  },
  lightbulb = {
    enable = false,
    enable_in_insert = false,
    sign = true,
    sign_priority = 40,
    virtual_text = true,
  },
})

vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { silent = true })
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<cr>', { silent = true })
vim.keymap.set('n', 'gh', '<Cmd>Lspsaga show_line_diagnostics<cr>', { silent = true })
vim.keymap.set('n', '<leader>lj', '<Cmd>Lspsaga diagnostics_jump_next<cr>', { silent = true })
vim.keymap.set('n', '<leader>lk', '<Cmd>Lspsaga diagnostics_jump_prev<cr>', { silent = true })
vim.keymap.set({"n","v"}, "<leader>a", "<cmd>lua vim.lsp.buf.code_action()<CR>", { silent = true })
vim.keymap.set("n", "<leader>lr", "<cmd>Lspsaga rename<CR>", { silent = true })
vim.keymap.set("n", "<leader>gr", "<cmd>Lspsaga finder<CR>", { silent = true })
vim.keymap.set("n", "<leader>lf", "<cmd>lua vim.lsp.buf.format()<CR>", { silent = true })

require("lspconfig").lua_ls.setup {
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = {
          [vim.fn.expand "$VIMRUNTIME/lua"] = true,
          [vim.fn.stdpath "config" .. "/lua"] = true,
        },
      },
    },
  }
}

require("lspconfig").solargraph.setup {
  capabilities = capabilities,
}

require("lspconfig").pyright.setup {
  capabilities = capabilities,
}

require("lspconfig").phpactor.setup {
  capabilities = capabilities,
}

require("lspconfig").gopls.setup {
  capabilities = capabilities,
}

vim.cmd([[
  let g:phpactor_ide_helper_path = '_ide_helper.php'
]])

require'lspconfig'.dartls.setup{
  cmd = { "dart", 'language-server', '--protocol=lsp' },
  capabilities = capabilities,
}

