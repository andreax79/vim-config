local auto_theme_custom = require('lualine.themes.auto')
auto_theme_custom.normal.c.bg = 'none'

require('lualine').setup {
    options = {
        extensions = { 'neo-tree', 'fugitive', },
        component_separators = "",
		section_separators = { left = "", right = "" },
        theme = auto_theme_custom
    }
}
