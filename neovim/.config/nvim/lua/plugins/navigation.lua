return {
	{
		"gsuuon/tshjkl.nvim",
		config = true,
	},
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = true,
	},
	-- use jk for escape
	{
		"max397574/better-escape.nvim",
		opts = {},
	},
	{
		"nvim-telescope/telescope.nvim",
		cmd = "Telescope",
		opts = {
			extensions = {
				file_browser = {
					auto_depth = true,
				},
			},
		},
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		priority = 999,
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
			"3rd/image.nvim",
		},
		opts = {
			window = {
				mappings = {
					["P"] = { "toggle_preview", config = { use_float = true, use_image_nvim = true } },
				},
			},
		},
	},
}
