return {
    -- colorscheme summerfruit256
    -- colorscheme lucius
    -- colorscheme hybrid
    -- colorscheme molokai " (7/2016)
    -- colorscheme solarized " (4/2017)
    -- colorscheme base16-one-light
    -- colorscheme dracula_bold
    -- colorscheme nord " (7/2022)
    -- colorscheme ayu " (5/2022)
    -- colorscheme onehalfdark " (6/2023)
    -- colorscheme gotham " (7/2024)
    -- colorscheme oxocarbon " (7/2024)
    --colorscheme tokyonight-night " (9/2024)
    -- If you want to see what colorschemes are already installed,
    -- you can use `:Telescope colorscheme`.
    'folke/tokyonight.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
        ---@diagnostic disable-next-line: missing-fields
        require('tokyonight').setup {
            styles = {
                comments = { italic = false }, -- Disable italics in comments
            },
        }
        vim.cmd.colorscheme 'tokyonight-night'
    end,
}
