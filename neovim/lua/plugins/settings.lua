local vim = vim
return {
  {
    'nvim-treesitter/nvim-treesitter',
    opts = {},
    build = ':TSUpdate',
  },
  {
    'folke/neodev.nvim',
    opts = {},
  },
  {
    'folke/neoconf.nvim',
    opts = {},
  },
  {
    'neovim/nvim-lspconfig',
  },
  {
    'williamboman/mason.nvim',
    opts = {},
  },
  {
    'williamboman/mason-lspconfig.nvim',
    opts = {},
    dependencies = {
      'williamboman/mason.nvim',
      'folke/neoconf.nvim',
    },
    config = function (_, opts)
      local plugin = require('mason-lspconfig')
      local lspconfig = require('lspconfig')
      plugin.setup(opts)
      plugin.setup_handlers {
        function (server_name)
          local server_opts = {}
          if server_name == 'lua_ls' then
            server_opts = {
              settings = {
                Lua = {
                  diagnostics = {
                    globals = { 'vim' },
                  },
                },
              },
            }
          end
          lspconfig[server_name].setup(server_opts)
        end,
      }
    end
  },
  {
    'mfussenegger/nvim-lint',
    dependencies = {
      'williamboman/mason.nvim',
    },
    config = function ()
      local plugin = require('lint')
      vim.api.nvim_create_autocmd({ "BufWritePost", 'InsertLeave', 'TextChanged' }, {
        callback = function()
          plugin.try_lint()
        end,
      })
    end
  },
  {
    'rshkarin/mason-nvim-lint',
    dependencies = {
      'mfussenegger/nvim-lint',
    },
    opts = {
      automatic_installation = false,
    },
  },
}
