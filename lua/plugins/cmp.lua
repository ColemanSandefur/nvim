return {
    -- nvim-cmp for auto-completion
    {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",  -- Lazy load on entering Insert mode
        dependencies = {
            -- Completion sources
            "hrsh7th/cmp-nvim-lsp",  -- LSP source for nvim-cmp
            "hrsh7th/cmp-buffer",     -- Buffer source for nvim-cmp
            "hrsh7th/cmp-path",       -- Path source for nvim-cmp
            "hrsh7th/cmp-cmdline",    -- Cmdline source for nvim-cmp
            "saadparwaiz1/cmp_luasnip", -- LuaSnip source (for snippets)
            -- Snippet engine
            "L3MON4D3/LuaSnip",
            "onsails/lspkind.nvim", -- VS Code-like icons
            "hrsh7th/cmp-nvim-lsp-signature-help", -- Signature help
        },
        config = function()
            local cmp = require("cmp")
            local lspkind = require("lspkind")
            local luasnip = require("luasnip")
            require("luasnip.loaders.from_vscode").lazy_load()

            cmp.setup({
                formatting = {
                    format = lspkind.cmp_format({
                        mode = "symbol_text",
                        maxwidth = 50,
                        ellipsis_char = '…',
                    })
                },
                snippet = {
                    expand = function(args)
                        luasnip.lsp_expand(args.body)
                    end,
                },
                mapping = cmp.mapping.preset.insert({
                    -- Open the completion menu using Ctrl + Space
                    ['<C-Space>'] = cmp.mapping.complete(),

                    -- Confirm auto complete using Enter
                    ['<CR>'] = cmp.mapping.confirm({ select = true }),

                    -- Navigate the suggestions
                    ['<Tab>'] = cmp.mapping.select_next_item(),
                    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
                    ['<C-d>'] = cmp.mapping.scroll_docs(4),
                    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
                }),
                sources = cmp.config.sources({
                    { name = 'nvim_lsp' },
                    { name = 'nvim_lsp_signature_help' },
                    { name = 'luasnip' },
                    { name = 'buffer' },
                    { name = 'path' },
                }),
                window = {
                    documentation = cmp.config.window.bordered(),
                    completion = cmp.config.window.bordered(),
                },
                experimental = {
                    ghost_text = true,
                },
            })
        end,
    },
}

