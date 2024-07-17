local vim = vim
return {
	{
		"xiyaowong/transparent.nvim",
		lazy = false,
		opts = {
			extra_groups = {
				"FoldColumn",
			},
		},
		config = function(_, opts)
			local m = require("transparent")
			m.setup(opts)
			-- m.clear_prefix('NeoTree')
			m.clear_prefix("ToggleTerm")
			m.clear_prefix("statuscol")
		end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			transparent = vim.g.transparent_enabled,
			styles = {
				sidebars = "transparent",
			},
		},
		config = function(_, opts)
			require("tokyonight").setup(opts)
			vim.cmd.colorscheme("tokyonight")
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			options = {
				theme = "tokyonight",
			},
			extensions = { "neo-tree", "lazy", "mason", "toggleterm" },
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diagnostics" },
				lualine_c = { "buffers" },
				-- lualine_x = {'encoding', 'fileformat', 'filetype'},
				lualine_x = {},
				-- lualine_y = {'progress'},
				lualine_y = {},
				lualine_z = { "location" },
			},
		},
	},
	{
		"stevearc/dressing.nvim",
		opts = {},
	},
	{
		"folke/zen-mode.nvim",
		config = true,
	},
	{
		"vhyrro/luarocks.nvim",
		priority = 1001, -- this plugin needs to run before anything else
		opts = {
			rocks = { "magick" },
		},
	},
	{
		"3rd/image.nvim",
		dependencies = { "luarocks.nvim" },
		opts = {
			tmux_show_only_in_active_window = true,
			window_overlap_clear_enabled = true,
			window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "", "neo-tree" },
		},
	},
}
