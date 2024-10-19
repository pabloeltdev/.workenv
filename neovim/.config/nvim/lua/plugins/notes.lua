return {
	{
		"nvim-neorg/neorg",
		dependencies = { "nvim-lua/plenary.nvim", "luarocks.nvim" },
		lazy = false,
		version = "*",
		config = function()
			require("neorg").setup({
				load = {
					["core.defaults"] = {}, -- Loads default behaviour
					["core.concealer"] = {}, -- Adds pretty icons to your documents
					["core.completion"] = {
						config = {
							engine = "nvim-cmp",
						},
					},
					["core.dirman"] = { -- Manages Neorg workspaces
						config = {
							workspaces = {
								games = "~/Workspaces/notes/games",
								work = "~/Workspaces/notes/work",
								travel = "~/Workspaces/notes/travel",
								lais = "~/Workspaces/notes/lais",
							},
						},
					},
				},
			})
		end,
	},
}
