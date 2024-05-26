return {
  {
    "nvim-neorg/neorg",
    -- build = ":Neorg sync-parsers",
    dependencies = { "nvim-lua/plenary.nvim", "luarocks.nvim" },
    lazy = false,
    version = "*", 
    config = function()
      require("neorg").setup {
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
              },
            },
          },
        },
      }
    end,
  },
  {
    "kawre/leetcode.nvim",
    build = ":TSUpdate html",
    dependencies = {
        "nvim-telescope/telescope.nvim",
        "nvim-lua/plenary.nvim", -- required by telescope
        "MunifTanjim/nui.nvim",

        -- optional
        "nvim-treesitter/nvim-treesitter",
        "rcarriga/nvim-notify",
        "nvim-tree/nvim-web-devicons",
    },
    opts = {
      lang = "python",
      image_support = true,
    },
  }
}

