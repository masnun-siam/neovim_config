-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')
vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')
vim.keymap.set('n', 'ss', '<C-w>s')
vim.keymap.set('n', 'sv', '<C-w>v')
vim.keymap.set('n', 'sd', '<C-w>c')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.keymap.set({'n', 'v'}, '<leader>y', '"*y')
vim.keymap.set({'n', 'v'}, '<leader>p', '"*p')

vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

vim.cmd([[
  command GoToFile lua require('telescope.builtin').find_files()
  command Commands lua require('telescope.builtin').commands()
  command ZenMode lua require('zen-mode').toggle({window = {width = 0.8}})
]])


