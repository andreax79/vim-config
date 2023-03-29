vim.g.loaded_netrw = 0
vim.g.loaded_netrwPlugin = 0
vim.opt.termguicolors = true

local neo_tree = require('neo-tree')

neo_tree.setup({
    enable_git_status = true,
    filesystem = {
        hijack_netrw_behavior = "open_current",
        window = {
            mappings = {
                ["-"] = "navigate_up",
                ["/"] = "noop", -- disable fuzzy finder
            },
        },
    },
    buffers = {
        follow_current_file = false,
    },
    default_component_configs = {
        icon = {
            default = "",
        },
        git_status = {
            symbols = {
                -- Change type
                added     = "", -- or "✚", but this is redundant info if you use git_status_colors on the name
                modified  = "", -- or "", but this is redundant info if you use git_status_colors on the name
                deleted   = "✖",-- this can only be used in the git_status source
                renamed   = "",-- this can only be used in the git_status source
                -- Status type
                untracked = "+",
                ignored   = "",
                unstaged  = "",
                staged    = "",
                conflict  = "",
            }
        },
    },
    source_selector = {
        winbar = false,
        statusline = false,
    }
})
