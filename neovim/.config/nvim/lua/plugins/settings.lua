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
    config = function(_, opts)
      local plugin = require('mason-lspconfig')
      local lspconfig = require('lspconfig')
      plugin.setup(opts)
      plugin.setup_handlers {
        function(server_name)
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
          elseif server_name == 'volar' then
            server_opts = {
              settings = {
                css = {
                  validate = true,
                  lint = {
                    unknownAtRules = "ignore",
                  },
                },
                scss = {
                  validate = true,
                  lint = {
                    unknownAtRules = "ignore",
                  },
                },
              },
            }
          elseif server_name == 'tsserver' then
            server_opts = {
              init_options = {
                plugins = {
                  {
                    name = "@vue/typescript-plugin",
                    location = "/home/pabloelt/.asdf/installs/nodejs/20.13.1/lib/node_modules/@vue/typescript-plugin",
                    languages = { "javascript", "typescript", "vue" },
                  },
                },
              },
              filetypes = {
                "javascript",
                "typescript",
                "vue",
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
    config = function()
      local plugin = require('lint')
      plugin.linters_by_ft = {}
      vim.api.nvim_create_autocmd(
        { "BufWritePost", 'InsertLeave', 'TextChanged' },
        {
          callback = function()
            plugin.try_lint()
          end,
        }
      )
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
