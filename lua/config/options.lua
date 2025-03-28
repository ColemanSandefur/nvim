-- Enable line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Always show the gutter (sign column)
vim.opt.signcolumn = "yes"

-- Enable line wrapping (adjust if you prefer no wrapping)
vim.opt.wrap = false

-- Use spaces instead of tabs, and set tab width to 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

-- Automatically indent new lines
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.smarttab = true

-- Enable filetype plugin and indentation
vim.opt.filetype = 'on'
vim.opt.filetype.plugin = 'on'
vim.opt.filetype.indent = 'on'

-- Set search options
vim.opt.ignorecase = true  -- Ignore case in searches
vim.opt.smartcase = true   -- Don't ignore case if uppercase letters are used in search
vim.opt.hlsearch = true    -- Highlight search results
vim.opt.incsearch = true   -- Incremental search

-- Display line and column numbers
vim.opt.ruler = true

-- Show matching parentheses/brackets
vim.opt.showmatch = true

-- Enable cursorline to highlight the current line
vim.opt.cursorline = true

-- Enable mouse support
vim.opt.mouse = 'a'

-- Highlight current line with a different background color
vim.opt.cursorline = true

-- Show line and column numbers in status line
-- vim.opt.statusline = '%l:%c'

-- Set clipboard to use the system clipboard
vim.opt.clipboard = 'unnamedplus'

-- Set default file encoding to UTF-8
vim.opt.encoding = 'utf-8'

-- Enable LSP diagnostics to show inline errors and warnings
vim.diagnostic.config({
  virtual_text = true,    -- Show inline error/warning messages
  signs = true,          -- Show signs (e.g., error/warning icons in the gutter)
  underline = true,      -- Underline errors and warnings
  update_in_insert = false,  -- Don't update diagnostics in insert mode (optional)
})

-- Configure signs for diagnostics
vim.fn.sign_define('DiagnosticSignError', { text = '✘', texthl = 'DiagnosticError' })
vim.fn.sign_define('DiagnosticSignWarn', { text = '⚠', texthl = 'DiagnosticWarning' })
vim.fn.sign_define('DiagnosticSignInfo', { text = 'ℹ', texthl = 'DiagnosticInfo' })
vim.fn.sign_define('DiagnosticSignHint', { text = '💡', texthl = 'DiagnosticHint' })

