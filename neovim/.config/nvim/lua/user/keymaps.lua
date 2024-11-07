local wk = require("which-key")
wk.add({
	------------------------------------------------------------------------------
	{ "<leader>b", group = "Buffer" },
	{ "<leader>ba", "<cmd>%bd<cr>", desc = "Close all buffers" },
	{ "<leader>bb", "<cmd>bb<cr>", desc = "Close buffer" },
	{ "<leader>bk", "<cmd>%bd|e#<cr>", desc = "Close all other but keep this one" },
	------------------------------------------------------------------------------
	{ "<leader>f", group = "Telescope" },
	{ "<leader>fb", "<cmd>Telescope file_browser<cr>", desc = "Browse files" },
	{ "<leader>fd", "<cmd>TodoTelescope<cr>", desc = "Todo list" },
	{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File" },
	{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Find code" },
	{ "<leader>fn", "<cmd>Telescope notify<cr>", desc = "Notifications" },
	------------------------------------------------------------------------------
	{ "<leader>m", group = "Manage", icon = "" },
	{ "<leader>mm", "<cmd>Masion<cr>", desc = "Mason" },
	{ "<leader>mm", "<cmd>Lazy<cr>", desc = "Lazynvim" },
	------------------------------------------------------------------------------
	{
		"<leader>q",
		group = "Quick actions",
	},
	{
		"<leader>qd",
		"<cmd>Trouble<cr>",
		desc = "Trouble",
	},
	{
		"<leader>qe",
		"<cmd>lua vim.diagnostic.open_float({scope='line'})<cr>",
		desc = "Line errors",
	},
	{
		"<leader>ql",
		"<cmd>EslintFixAll<cr>",
		desc = "Fix all lint errors",
	},
	{
		"<leader>qq",
		"<cmd>lua vim.lsp.buf.code_action()<CR>",
		desc = "Code actions",
	},
	{
		"<leader>qr",
		":%s/\\<<C-r><C-w>\\>//g<left><left>",
		desc = "Replace word",
	},
	{
		"<leader>qs",
		"<cmd>:w<cr>",
		desc = "Save",
	},
	------------------------------------------------------------------------------
	{ "<leader>s", group = "Switch", icon = "" },
	{ "<leader>se", "<cmd>Neotree toggle<cr>", desc = " Toogle Neotree" },
	{ "<leader>sh", "<cmd>noh<cr>", desc = "Toggle Highlights" },
	{ "<leader>ss", "<cmd>TransparentToggle<cr>", desc = "Toggle Transparency" },
	{ "<leader>st", "<cmd>ToggleTerm<cr>", desc = "Toggle Terminal" },
	{ "<leader>sz", "<cmd>ZenMode<cr>", desc = "Toggle Zen moode" },
	{ "<leader>se", "<cmd>Neotree toggle<cr>", desc = "Toggle Neotree" },
	------------------------------------------------------------------------------
	{ "H", "<cmd>bprevious<cr>", desc = "Buffer anterior" },
	{ "L", "<cmd>bnext<cr>", desc = "Buffer posterior" },
	{ "L", "<cmd>bnext<cr>", desc = "Buffer posterior" },
	{ "<S-Tab>", "^", desc = "Start of line" },
	{ "<Tab>", "g_", desc = "End of line" },
})
