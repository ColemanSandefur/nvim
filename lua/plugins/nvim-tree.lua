return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- optional, for file icons
  },
  config = function()
    require("nvim-tree").setup({
      view = { width = 35 },
      filters = { dotfiles = false },
      git = { enable = true },
      renderer = { icons = { show = { file = true, folder = true, folder_arrow = true, git = true } } },
    })
    -- Open nvim-tree on startup
    vim.api.nvim_create_autocmd("VimEnter", {
      callback = function()
        require("nvim-tree.api").tree.open()
        vim.cmd("wincmd p")
      end
    })
  end,
}
