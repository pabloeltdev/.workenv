return {
  {
    'gsuuon/tshjkl.nvim',
    config = true,
  },
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = true,
  },
  {
    "max397574/better-escape.nvim",
    opts = {},
  },
  {
    'nvim-telescope/telescope.nvim',
    cmd = "Telescope",
    opts = {},
    dependencies = { 'nvim-lua/plenary.nvim' },
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
