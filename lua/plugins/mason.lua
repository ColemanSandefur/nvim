return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
		"WhoIsSethDaniel/mason-tool-installer.nvim", -- For auto-installing tools
	},
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup({
			automatic_installation = true, -- Automatically install LSPs
		})

		-- Recommended LSP servers for code editing
		local servers = {
			"lua_ls", "pyright", "tsserver", "html", "cssls", "jsonls", "bashls", "marksman"
		}

		require("mason-tool-installer").setup({
			ensure_installed = vim.tbl_extend("force", servers, {
				"prettier", "stylua", "black", "eslint_d", "shfmt"
			}),
			auto_update = true,
			run_on_start = true,
		})

		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		for _, server in ipairs(servers) do
			vim.lsp.config[server] = {
				capabilities = capabilities,
			}
		end
	end,
}
