-- Aerial is a code outline window for skimming and quick navigation.
return {
    "stevearc/aerial.nvim",
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons"
    },
    opts = function()
        local opts = {
            backends = { "treesitter", "lsp", "markdown", "man" },
            attach_mode = "window",
            nerd_font = false,
            show_guides = true,
        }
        return opts
    end,
    keys = {
        { "<leader>a", "<cmd>AerialToggle<cr>", desc = "Aerial (Symbols)" },
    },
}
