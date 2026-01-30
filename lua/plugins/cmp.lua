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
        },
        config = function()
            local cmp = require("cmp")
            local luasnip = require("luasnip")
            require("luasnip.loaders.from_vscode").lazy_load()

            cmp.setup({
                snippet = {
                    expand = function(args)
                        luasnip.lsp_expand(args.body)
                    end,
                },
                mapping = {
                    -- Open the completion menu using Ctrl + Space
                    ["<C-Space>"] = cmp.mapping.complete(),

                    -- Confirm auto complete using Tab
                    ["<Tab>"] = cmp.mapping.confirm({ select = true }),

                    -- Navigate the suggestions
                    ["<C-p>"] = cmp.mapping.select_prev_item(),
                    ["<C-n>"] = cmp.mapping.select_next_item(),
                    ["<C-d>"] = cmp.mapping.scroll_docs(-4),
                    ["<C-u>"] = cmp.mapping.scroll_docs(4),
                },
                sources = {
                    { name = "nvim_lsp" },
                    { name = "buffer" },
                    { name = "path" },
                    { name = "cmdline" },
                    { name = "luasnip" },  -- Optional, if using LuaSnip
                },
            })
        end,
    },
}

