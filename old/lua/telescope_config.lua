local telescope = require("telescope")
telescope.setup({
    defaults = {
        mappings = {
            -- Close Telescope with a single ESC
            i = {
                ["<Esc>"] = "close",
                ["<C-c>"] = false,
            },
        }
    }
})
telescope.load_extension("ag")
