vim.o.termguicolors = true
vim.cmd [[ colorscheme gruvbox ]]

require('tokyonight').setup {
  transparent = vim.g.transparent_enabled,
}
