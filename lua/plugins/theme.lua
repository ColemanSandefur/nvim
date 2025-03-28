return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000, -- Ensure it loads first
    config = function()
        vim.cmd([[colorscheme tokyonight]])
    end,
}
