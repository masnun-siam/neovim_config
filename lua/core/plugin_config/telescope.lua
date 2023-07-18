local actions = require('telescope.actions')

require('telescope').setup {
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown {
            -- even more opts
        }
      }
    },
    mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-n>"] = actions.cycle_history_next,
        ["<C-p>"] = actions.cycle_history_prev,
        ["<C-c>"] = actions.close,
      },
      -- for normal mode
      n = {
        ["q"] = actions.close,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      },
    }
  },
}
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<Space>ff', builtin.find_files, {})
vim.keymap.set('n', '<Space>st', builtin.live_grep, {})
vim.keymap.set('n', '<Space><Space>', builtin.oldfiles, {})
vim.keymap.set('n', '<Space>fg', builtin.live_grep, {})
vim.keymap.set('n', '<Space>fh', builtin.help_tags, {})
vim.keymap.set('n', '<Space>fb', builtin.buffers, {silent=true})
vim.keymap.set('n', '<Space>ls', builtin.lsp_document_symbols, {silent= true})
vim.keymap.set('n', '<Space>gr', builtin.lsp_references, {silent= true})
vim.keymap.set('n', '<Space>js', builtin.jumplist, {silent= true})
vim.keymap.set('n', '<Space>js', builtin.jumplist, {silent= true})

require("telescope").load_extension("ui-select")
