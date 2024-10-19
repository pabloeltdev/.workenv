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
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim" },
		config = function()
			require("telescope").setup({
				extensions = {
					file_browser = {
						hijack_netrw = true,
						auto_depth = true,
					},
				},
			})
			require("telescope").load_extension("file_browser")
		end,
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
			filesystem = {
				hijack_netrw_behavior = "disabled",
			},
		},
	},
}
