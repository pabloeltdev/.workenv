return {
	-- better code actions
	{
		"luckasRanarison/clear-action.nvim",
		opts = {},
	},
	-- helper signatures
	{
		"ray-x/lsp_signature.nvim",
		event = "VeryLazy",
		opts = {},
	},
	-- auto close/rename tags
	{
		"windwp/nvim-ts-autotag",
		event = { "BufReadPost", "BufWritePost", "BufNewFile" },
		opts = {},
	},
	{
		"folke/todo-comments.nvim",
		opts = {},
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {},
	},
	{
		"kylechui/nvim-surround",
		version = "*",
		event = "VeryLazy",
		opts = {},
	},
	{
		{ "echasnovski/mini.nvim", version = false },
		{ "echasnovski/mini.surround", version = false, opts = {} },
		{ "echasnovski/mini.pairs", version = false, opts = {} },
		{ "echasnovski/mini.cursorword", version = false, opts = {} },
		{ "echasnovski/mini.ai", version = false, opts = {} },
		{ "echasnovski/mini.comment", version = false, opts = {} },
		{ "echasnovski/mini.indentscope", version = false, opts = {} },
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
