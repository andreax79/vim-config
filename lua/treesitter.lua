require'nvim-treesitter.configs'.setup {
  ensure_installed = { "python", "vim", "javascript", "rust", "go", "make", "bash", "sql", "c", "lua", "vim", "xml" },
  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  -- auto_install = true
  highlight = {
    enable = true,
  }
}

require('aerial').setup({
  backends = { "treesitter", "lsp", "markdown", "man" },
  attach_mode = "window",
  -- attach_mode = "global",
  nerd_font = false,
  show_guides = true,

  -- optionally use on_attach to set keymaps when aerial has attached to a buffer
  on_attach = function(bufnr)
    -- Jump forwards/backwards with '{' and '}'
    vim.keymap.set('n', '{', '<cmd>AerialPrev<CR>', {buffer = bufnr})
    vim.keymap.set('n', '}', '<cmd>AerialNext<CR>', {buffer = bufnr})
  end
})
