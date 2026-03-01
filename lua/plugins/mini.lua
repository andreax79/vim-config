-- Collection of various small independent plugins/modules
-- https://github.com/nvim-mini/mini.nvim
return {
    "nvim-mini/mini.nvim",
    config = function()
        -- mini-indentscope - ii scopre (vii, cii, dii)
        -- https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-indentscope.md
        local indentscope = require("mini.indentscope")
        indentscope.setup({
            draw = {
                animation = indentscope.gen_animation.none(),
            },
        })

        -- mini-autopair
        -- require('mini.pairs').setup()

        -- Better Around/Inside textobjects
        -- Examples:
        --  - va)  - [V]isually select [A]round [)]paren
        --  - yinq - [Y]ank [I]nside [N]ext [Q]uote
        --  - ci'  - [C]hange [I]nside [']quote
        require("mini.ai").setup({ n_lines = 500 })
    end,
}
