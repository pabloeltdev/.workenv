return {
	{
		"folke/which-key.nvim",
		config = function()
			require("which-key").register({
				["<leader>"] = {
					b = {
						name = "Buffers",
						b = { "<cmd>bd<cr>", "Close buffer" },
						c = { "<cmd>%bd|e#<cr>", "Close all except this" },
						x = { "<cmd>%bd<cr>", "Close all" },
					},
					c = {
						name = "Code",
						d = { "<cmd>TroubleToggle document_diagnostics<cr>", "Show all troubles in file" },
						e = { "<cmd>EslintFixAll<cr>", "Fix all (eslint)" },
						h = { "<cmd>noh<cr>", "Clear highlights" },
					},
					l = { "<cmd>Lazy<cr>", "Lazyvim" },
					m = { "<cmd>Mason<cr>", "Mason" },
					s = {
						name = "Session",
						f = { "<cmd>wqa<cr>", "Finish saving all" },
						r = { '<cmd>lua require("persistence").load()<cr>', "Restore" },
						s = { "<cmd>wa<cr>", "Save all" },
						q = { "<cmd>qa<cr>", "Quit" },
						t = { "<cmd>TransparentToggle<cr>", "Toggle transparency" },
						z = { "<cmd>ZenMode<cr>", "Toggle Zen Mode" },
					},
					p = {
						name = "Project",
						t = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "Show all troubles in project" },
						e = { "<cmd>Neotree toggle<cr>", "Explorer" },
					},
					q = {
						name = "Quick actions",
						d = { '<cmd>lua vim.diagnostic.open_float({scope="line"})<cr>', "Show line errors" },
						q = { "<cmd>lua vim.lsp.buf.code_action()<CR>", "Code actions" },
						r = { ":%s/\\<<C-r><C-w>\\>//g<left><left>", "Replace word" },
						s = { "<cmd>w<cr>", "Save file" },
						t = { "<cmd>ToggleTerm<cr>", "Toggle terminal" },
					},
					t = {
						name = "Telescope",
						b = { "<cmd>Telescope file_browser<cr>", "Browse files" },
						d = { "<cmd>TodoTelescope<cr>", "Fix/Todo" },
						f = { "<cmd>Telescope find_files<cr>", "Find file" },
						g = { "<cmd>Telescope live_grep<cr>", "Grep files" },
						n = { "<cmd>Telescope notify<cr>", "Show notifications" },
					},
				},
				g = {
					["("] = { "^", "Start of line (non-blank)" },
					[")"] = { "g_", "End of line (non-blank)" },
					D = { "<cmd>lua vim.lsp.buf.declaration()<CR>", "Declaration" },
					d = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
					i = { "<cmd>Trouble lsp_implementations<cr>", "Implementation" },
					h = { "<cmd>TroubleToggle<cr>", "Toggle trouble" },
					r = { "<cmd>Trouble lsp_references<cr>", "References" },
					s = { "<cmd>Trouble lsp_type_definitions<cr>", "Type definitions" },
				},
				H = { "<cmd>bprevious<cr>", "Previous buffer" },
				L = { "<cmd>bnext<cr>", "Next buffer" },
			})
		end,
	},
}
