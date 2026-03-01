return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		extensions = { "neo-tree", "fugitive" },
		component_separators = "",
		section_separators = { left = "", right = "" },
	},
}
