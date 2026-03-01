-- Treesitter code parsing capabilities
return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    opts = {
        highlight = {
            enable = true,
        }
    },
    config = function(_, opts)
        require'nvim-treesitter'.install {
            "python",
            "vim",
            "javascript",
            "rust",
            "go",
            "make",
            "bash",
            "sql",
            "c",
            "lua",
            "vim",
            "xml",
            "yaml"
        }
    end,
}
