return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	opts = {
		format_on_save = {
			lsp_fallback = true,
			timeout_ms = 500,
		},
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "black" },
			javascript = { "prettier" },
			typescript = { "prettier" },
			html = { "prettier" },
			-- Add more filetypes/formatters as needed
		},
	},
}
