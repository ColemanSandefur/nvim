return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
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
			close_command = require("utils.buffers").smart_buf_close,
			right_mouse_command = require("utils.buffers").smart_buf_close,
			indicator = {
				style = "icon",
				icon = "▎",
			},
			offsets = {
				{
					filetype = "NvimTree",
					text = "File Explorer",
					highlight = "Directory",
					text_align = "left",
					separator = true,
				},
			},
			color_icons = true,
		},
	},
}
