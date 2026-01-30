local function smart_buf_close()
  local listed = vim.fn.getbufinfo({ buflisted = 1 })
  local cur = vim.api.nvim_get_current_buf()

  if #listed > 1 then
    -- There are other buffers → switch to previous and delete current
    vim.cmd("bp")         -- switch to previous buffer
    vim.cmd("bd " .. cur) -- delete the buffer we were on
  else
    -- Only one buffer → create a new empty buffer, then delete current
    vim.cmd("enew")       -- create new empty buffer
    vim.cmd("bd " .. cur) -- delete the old buffer
  end
end

return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  opts = {
    options = {
      mode = "buffers",
      diagnostics = "nvim_lsp",
      separator_style = "slant",
      enforce_regular_tabs = false,
      show_buffer_close_icons = true,
      show_close_icon = false,
      always_show_bufferline = true,
      close_command = smart_buf_close,
      right_mouse_command = smart_buf_close,
      indicator = {
        style = 'icon',
        icon = '▎',
      },
      offsets = {
        {
          filetype = "NvimTree",
          text = "File Explorer",
          highlight = "Directory",
          text_align = "left",
          separator = true,
        }
      },
      color_icons = true
    },
  }
}
