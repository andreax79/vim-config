local nvim_tree = require('nvim-tree')

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

nvim_tree.setup{
    filters = {
        dotfiles = true
    },
    git = {
        ignore = false
    },
    view = {
        float = {
            enable = false
        }
    }
}
