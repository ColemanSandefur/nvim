local map = vim.keymap.set

-- Telescope

local builtin = require('telescope.builtin')
map('n', '<leader>po', builtin.find_files, { desc = 'Telescope find files' })
map('n', '<leader>pf', builtin.live_grep, { desc = 'Telescope find files' })
