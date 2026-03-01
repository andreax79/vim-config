-- Autocompletion
return {
    "saghen/blink.cmp",
    event = "VimEnter",
    version = "1.*",
    dependencies = {
        -- Snippet Engine
        {
            "L3MON4D3/LuaSnip",
            version = "2.*",
            build = (function()
                if vim.fn.has("win32") == 1 or vim.fn.executable("make") == 0 then
                    return
                end
                return "make install_jsregexp"
            end)(),
            dependencies = {
            },
            opts = {},
        },
    },
    opts = {
        keymap = {
            preset = "default",
        },
        appearance = {
            nerd_font_variant = "mono",
        },
        sources = {
            default = { "lsp", "path", "snippets" },
        },
        snippets = { preset = "luasnip" },
        fuzzy = { implementation = "lua" },
        -- Shows a signature help window while you type arguments for a function
        signature = { enabled = true },
    },
}
