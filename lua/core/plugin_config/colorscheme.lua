vim.o.termguicolors = true
vim.opt.cursorline = true
vim.opt.winblend = 0
vim.opt.wildoptions = 'pum'
vim.opt.pumblend = 5
vim.opt.background = 'dark'
-- get color scheme from env named NVIM_COLOR
-- vim.g.colors_name = vim.env.NVIM_THEME or 'gruvbox'
-- get rid of line highlight
vim.cmd [[highlight clear CursorLine]]
-- Lua
-- require('onedark').setup {
--     style = 'darker'
-- }
require('onedark').load()
-- vim.cmd [[ colorscheme tokyonight-day ]]
--
-- require('tokyonight').setup {
--   transparent = vim.g.transparent_enabled,
-- }


-- highlight yanked text for 200ms using the "Visual" highlight group
vim.cmd [[
  augroup highlight_yank
  autocmd!
  au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=100})
  augroup END
]]
