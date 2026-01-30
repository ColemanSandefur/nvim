local map = vim.keymap.set

map('n', '<leader>fx', ':Explore<cr>', { remap = true })

-- Telescope

local builtin = require('telescope.builtin')
map('n', '<leader>fo', builtin.find_files, { desc = 'Telescope find files' })
map('n', '<leader>ff', builtin.live_grep, { desc = 'Telescope live grep' })

-- Harpoon

map('n', '<leader>a', require('harpoon.mark').add_file, { desc = 'Harpoon mark file' })
map('n', '<leader>v', require('harpoon.ui').toggle_quick_menu, { desc = 'Harpoon toggle quick menu' })

map('n', '<leader>1', function() require('harpoon.ui').nav_file(1) end, { desc = 'Harpoon quick switch to mark #1' })
map('n', '<leader>2', function() require('harpoon.ui').nav_file(2) end, { desc = 'Harpoon quick switch to mark #2' })
map('n', '<leader>3', function() require('harpoon.ui').nav_file(3) end, { desc = 'Harpoon quick switch to mark #3' })
map('n', '<leader>4', function() require('harpoon.ui').nav_file(4) end, { desc = 'Harpoon quick switch to mark #4' })
map('n', '<leader>5', function() require('harpoon.ui').nav_file(5) end, { desc = 'Harpoon quick switch to mark #5' })
map('n', '<leader>6', function() require('harpoon.ui').nav_file(6) end, { desc = 'Harpoon quick switch to mark #6' })
map('n', '<leader>7', function() require('harpoon.ui').nav_file(7) end, { desc = 'Harpoon quick switch to mark #7' })
map('n', '<leader>8', function() require('harpoon.ui').nav_file(8) end, { desc = 'Harpoon quick switch to mark #8' })
map('n', '<leader>9', function() require('harpoon.ui').nav_file(9) end, { desc = 'Harpoon quick switch to mark #9' })

-- Mason

map('n', '<leader>e', vim.diagnostic.open_float)

-- LSP: Go to definition
map('n', 'gd', function() vim.lsp.buf.definition() end, { desc = 'Go to definition' })
-- LSP: Peek definition (Neovim 0.11+)
map('n', 'gp', function() vim.lsp.buf.peek_definition() end, { desc = 'Peek definition' })
-- LSP: Go back after definition
map('n', 'gD', '<C-o>', { desc = 'Jump back from definition' })

-- Comment.nvim: Comment/uncomment lines
-- Normal mode: gcc, Visual mode: gc
map('n', 'gcc', function() require('Comment.api').toggle.linewise.current() end, { desc = 'Toggle comment line' })
map('v', 'gc', function() require('Comment.api').toggle.linewise(vim.fn.visualmode()) end, { desc = 'Toggle comment selection' })

-- nvim-tree: Toggle file explorer
map('n', '<leader>ft', ':NvimTreeToggle<CR>', { desc = 'Toggle file tree' })
