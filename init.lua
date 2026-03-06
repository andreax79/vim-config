vim.g.have_nerd_font = true -- Set to true if nerd font is installed
vim.o.number = true -- Show line numbers
vim.o.mouse = "a" -- Enable mouse mode
vim.o.showmode = false -- Don't show the mode
vim.o.breakindent = true -- Enable break indent
vim.o.undofile = true -- Save undo history
vim.o.infercase = true -- Case-insensitive searching
vim.o.ignorecase = true -- Case-insensitive searching
vim.o.smartcase = true --  Override ignorecase if search pattern contains uppercase letters
vim.o.showmatch = true -- Show matching
vim.o.signcolumn = "yes" -- Keep signcolumn on by default
vim.o.updatetime = 250 -- Update time
vim.o.timeoutlen = 300 -- Mapped sequence wait time
vim.o.splitright = true -- Vertical splits will automatically be to the right of the current window
vim.o.splitbelow = true -- Horizontal splits will automatically be below the current window
vim.opt.listchars = { tab = "▸.", trail = ".", nbsp = "." } -- Show indicators for tabs, trailing spaces, and non-breaking spaces
vim.o.inccommand = "split" -- Preview substitutions live, as you type!
vim.o.wrap = false -- don't wrap lines
vim.o.cursorline = true -- Show which line your cursor is on
vim.o.scrolloff = 10 -- Minimal number of lines above/below the cursor
vim.o.confirm = true -- Always ask to save before doing destructive actions

-- tabs & indentation
vim.opt.tabstop = 4 -- number of spaces that a <Tab> counts for
vim.opt.shiftwidth = 4 -- number of spaces for each step of (auto)indent
vim.opt.softtabstop = 4 -- number of spaces a <Tab> inserts in insert mode
vim.opt.expandtab = true -- insert space characters whenever the tab key is pressed
vim.opt.smarttab = true -- <Tab> at the start of a line uses shiftwidth

-- Sync clipboard between OS and NVIM
-- vim.schedule(function()
--     vim.o.clipboard = "unnamedplus"
-- end)
-- vim.keymap.set({'n', 'v'}, 'y', '"+y', { noremap = true, desc = 'Yank to system clipboard' })
-- vim.keymap.set({'n', 'v'}, 'p', '"+p', { noremap = true, desc = 'Paste from system clipboard' })
-- vim.keymap.set({'n', 'v'}, 'P', '"+P', { noremap = true, desc = 'Paste from system clipboard (before)' })

-- Diagnostic Config & Keymaps
-- See :help vim.diagnostic.Opts
vim.diagnostic.config({
    update_in_insert = false,
    severity_sort = true,
    float = { border = "rounded", source = "if_many" },
    underline = { severity = vim.diagnostic.severity.ERROR },

    -- Can switch between these as you prefer
    virtual_text = true, -- Text shows up at the end of the line
    virtual_lines = false, -- Teest shows up underneath the line, with virtual lines

    -- Auto open the float, so you can easily read the errors when jumping with `[d` and `]d`
    jump = { float = true },
})

vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlights" })

-- Exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Force saving files that require root permission
vim.keymap.set("c", "w!!", "%!sudo tee > /dev/null %", { noremap = true, desc = "Save file with root permissions" })

-- Save with :W
vim.api.nvim_create_user_command("W", "write", {})

-- Toggle listchars, which can be useful to see tabs and trailing spaces.
vim.keymap.set("n", "<leader>l", "<Cmd>set list!<CR>", { noremap = true, silent = true, desc = "Toggle [L]istchars" })

-- Toggle paste mode
vim.keymap.set("n", "<leader>p", "<Cmd>set paste!<CR>", { noremap = true, silent = true, desc = "Toggle [P]aste mode" })

-- vim.keymap.set("n", "<leader>m", "<Cmd>ToggleMouse<CR>", { noremap = true, silent = true })
-- vim.keymap.set("n", "<leader>a", "<Cmd>AerialToggle!<CR>", { noremap = true, silent = true })

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking (copying) text",
    group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
    callback = function()
        vim.hl.on_yank()
    end,
})

-- Install lazy.nvim plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        error("Error cloning lazy.nvim:\n" .. out)
    end
end

local rtp = vim.opt.rtp
rtp:prepend(lazypath)

-- Use :Lazy to check/update the plugins
require("lazy").setup({
    -- Vim indenter for standalone and embedded JavaScript and TypeScript
    { "jason0x43/vim-js-indent" },
    -- Generate Python docstring to your Python script file
    { "heavenshell/vim-pydocstring" },
    -- Highlight/trim all trailing whitespace characters (spaces and tabs)
    --:StripWhiteSpaces, :ToggleWhiteSpaces
    { "ntpeters/vim-better-whitespace" },
    -- repeat.vim: enable repeating supported plugin maps with "."
    { "tpope/vim-repeat" },
    -- Preview colours in source code while editing
    { "ap/vim-css-color" },
    -- Text filtering and alignment
    { "godlygeek/tabular" },
    -- This plugin provides the following mappings which allow you to move between
    -- Vim panes and tmux splits seamlessly.
    { "christoomey/vim-tmux-navigator" },
    -- Indent autodetection
    { "NMAC427/guess-indent.nvim" },
    -- Super fast git decorations implemented purely in Lua
    { "lewis6991/gitsigns.nvim" },
    -- Treesitter configurations
    require("plugins.treesitter"),
    -- Show symbols in a tree like view
    require("plugins.aerial"),
    require("plugins.which-key"),
    require("plugins.telescope"),
    {
        "kelly-lin/telescope-ag",
        dependencies = { "nvim-telescope/telescope.nvim" },
    },
    require("plugins.lsp"),
    require("plugins.copilot"),
    require("plugins.codecompanion"),
    require("plugins.autocomplete"),
    require("plugins.mini"),
    require("plugins.neo-tree"),
    require("plugins.colorscheme"),
    require("plugins.lualine"),
    -- languages
    { "andreax79/vim-metal-syntax" }, -- mtl syntax
    { "carlsmedstad/vim-bicep" },
})
