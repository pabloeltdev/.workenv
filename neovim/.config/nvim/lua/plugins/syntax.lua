return {
	{
		"mfussenegger/nvim-lint",
		dependencies = {
			"williamboman/mason.nvim",
		},
		config = function()
			local plugin = require("lint")
			plugin.linters_by_ft = {}
			vim.api.nvim_create_autocmd({ "BufWritePost", "InsertLeave", "TextChanged" }, {
				callback = function()
					plugin.try_lint()
				end,
			})
		end,
	},
	{
		"rshkarin/mason-nvim-lint",
		dependencies = {
			"mfussenegger/nvim-lint",
		},
		opts = {
			automatic_installation = false,
		},
	},
	{
		"nvim-treesitter/nvim-treesitter",
		opts = {},
		build = ":TSUpdate",
	},
	-- partial save
	{
		"stevearc/conform.nvim",
		opts = {
			format_on_save = {
				timeout_ms = 2000,
				lsp_format = "fallback",
			},
			formatters_by_ft = {
				lua = { "stylua" },
				javascript = { { "prettier", "ast-grep" } },
				vue = { "prettier" },
				typescriptreact = { "prettier" },
			},
		},
	},
}
