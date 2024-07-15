return {
	-- better code actions
	{
		"luckasRanarison/clear-action.nvim",
		config = true,
	},
	-- helper signatures
	{
		"ray-x/lsp_signature.nvim",
		event = "VeryLazy",
		config = true,
	},
	-- auto close/rename tags
	{
		"windwp/nvim-ts-autotag",
		event = { "BufReadPost", "BufWritePost", "BufNewFile" },
		config = true,
	},
	{
		"folke/todo-comments.nvim",
		config = true,
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = true,
	},
	{
		"kylechui/nvim-surround",
		version = "*",
		event = "VeryLazy",
		config = true,
	},
	{
		{ "echasnovski/mini.nvim", version = false },
		{ "echasnovski/mini.surround", version = false, config = true },
		{ "echasnovski/mini.pairs", version = false, config = true },
		{ "echasnovski/mini.cursorword", version = false, config = true },
		{ "echasnovski/mini.ai", version = false, config = true },
		{ "echasnovski/mini.comment", version = false, config = true },
		{ "echasnovski/mini.indentscope", version = false, config = true },
		{
			"echasnovski/mini.basics",
			version = false,
			opts = {
				mappings = {
					windows = true,
					move_with_alt = true,
				},
			},
		},
	},
}
