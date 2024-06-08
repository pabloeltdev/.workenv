return {
  {
    "folke/todo-comments.nvim",
    opts = {},
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  {
    "folke/persistence.nvim",
    event = "BufReadPre",
    opts = {}
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
    config = true,
  },
  {
    { 'echasnovski/mini.nvim',        version = false },
    { 'echasnovski/mini.surround',    version = false, config = true },
    { 'echasnovski/mini.pairs',       version = false, config = true },
    { 'echasnovski/mini.cursorword',  version = false, config = true },
    { 'echasnovski/mini.ai',          version = false, config = true },
    { 'echasnovski/mini.comment',     version = false, config = true },
    { 'echasnovski/mini.indentscope', version = false, config = true },
    {
      'echasnovski/mini.basics',
      version = false,
      opts = {
        mappings = {
          windows = true,
          move_with_alt = true,
        },
      },
    },
  }
}
