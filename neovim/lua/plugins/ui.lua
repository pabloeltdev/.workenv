local vim = vim
return {
  {
    'xiyaowong/transparent.nvim',
    lazy = false,
    config = function ()
      local m = require('transparent')
      m.clear_prefix('NeoTree')
      m.clear_prefix('ToggleTerm')
    end
  },
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    opts = {
      transparent = vim.g.transparent_enabled,
      styles = {
        sidebars = 'transparent',
        floats = 'transparent',
      },
    },
    config = function(_, opts)
      require('tokyonight').setup(opts)
      vim.cmd.colorscheme 'tokyonight'
    end,
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      options = {
        theme = 'tokyonight',
      },
      extensions = { 'neo-tree', 'lazy', 'mason', 'toggleterm' },
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diagnostics'},
        lualine_c = {'buffers'},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
      },
    },
  },
  {
    'stevearc/dressing.nvim',
    opts = {},
  },
  {
    '3rd/image.nvim',
    opts = {
      tmux_show_only_in_active_window = true,
      window_overlap_clear_enabled = true,
      window_overlap_clear_ft_ignore = { 'cmp_menu', 'cmp_docs', '', 'neo-tree' },
    },
  },
}
