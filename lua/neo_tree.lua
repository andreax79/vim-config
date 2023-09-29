vim.g.loaded_netrw = 0
vim.g.loaded_netrwPlugin = 0
vim.opt.termguicolors = true

local neo_tree = require('neo-tree')

neo_tree.setup({
    enable_git_status = true,
    filesystem = {
        bind_to_cwd = false,
        hijack_netrw_behavior = "open_current",
        window = {
            mappings = {
                ["-"] = "navigate_up",
                ["/"] = "noop", -- disable fuzzy finder
                ["D"] = "noop", -- disable fuzzy finder directory
                ["l"] = "noop", -- disable open split
                ["S"] = "noop", -- disable open split
                ["w"] = "noop", -- disable open with window picker
                ["!"] = "run_command", -- run commnad
                ["s"] = "search_ag",   -- search with ag
                ["p"] = "preview",
                ["P"] = "preview",
                ["\\"] = "preview",
            },
        },
        commands = {
            run_command = function(state)
                local node = state.tree:get_node()
                local path = node:get_id()
                vim.api.nvim_input(":! " .. path .. "<Home><Right>")
            end,
            search_ag = function(state)
                local node = state.tree:get_node()
                local path = node:get_id()
                vim.api.nvim_input(":Ag  " .. path .. "<Home><Right><Right><Right>")
            end,
            preview = function(state)
                local node = state.tree:get_node()
                local path = node.path
                vim.cmd("Preview " .. path)
            end
        },
    },
    buffers = {
        follow_current_file = false,
    },
    default_component_configs = {
        indent = {
            with_expanders = true,
            expander_collapsed = "",
            expander_expanded = "",
            expander_highlight = "NeoTreeExpander",
        },
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
                unstaged  = "*",
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
