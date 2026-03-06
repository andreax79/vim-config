return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
        extensions = { "neo-tree", "fugitive", "aerial" },
        component_separators = "",
        section_separators = { left = "", right = "" },
        sections = {
            lualine_x = {},
            lualine_y = {'filetype'},
            lualine_z = { -- current line/total lines:current column
                {
                    'lines',
                    fmt = function()
                        local current_line = vim.fn.line('.')
                        local total_lines = vim.fn.line('$')
                        local current_col = vim.fn.col('.')
                        return current_line .. '/' .. total_lines .. ':' .. current_col
                    end,
                },
            },
        },
    }
}
