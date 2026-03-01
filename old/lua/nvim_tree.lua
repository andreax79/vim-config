local nvim_tree = require('nvim-tree')

-- NvimTree
-- a - add file/dir
-- d - delete
-- r - rename
-- c - copy
-- p - paste
-- tab - preview
-- g? - help

vim.g.loaded_netrw = 0
vim.g.loaded_netrwPlugin = 0
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

-- Toggle nvim-tree
-- nmap <silent> <Leader>n :NvimTreeToggle<CR>

-- Autostart
-- autocmd StdinReadPre * let s:std_in=1
-- autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NvimTreeOpen | endif
