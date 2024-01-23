return {
  {
    'folke/which-key.nvim',
    config = function()
      require('which-key').register({
        ['<leader>'] = {
          b = {
            name = 'Buffers',
            b = {'<cmd>bd<cr>', 'Close buffer'},
            c = {'<cmd>%bd|e#<cr>', 'Close all except this'},
            x = {'<cmd>%bd<cr>', 'Close all'},
          },
          e = {'<cmd>Neotree toggle<cr>', 'Explorer'},
          f = {'<cmd>Telescope find_files<cr>', 'Find file'},
          g = {'<cmd>Telescope live_grep<cr>', 'Grep files'},
          l = {'<cmd>Lazy<cr>', 'Lazyvim'},
          m = {'<cmd>Mason<cr>', 'Mason'},
          s = {
            name = 'Session',
            f = {'<cmd>wqa<cr>', 'Finish saving all'},
            s = {'<cmd>wa<cr>', 'Save all'},
            q = {'<cmd>qa<cr>', 'Quit'},
            t = {'<cmd>TransparentToggle<cr>', 'Toggle transparency'},
          },
          p = {
            name = 'Project',
            f = {'<cmd>TodoTelescope<cr>', 'Fix/Todo'},
            t = {'<cmd>TroubleToggle workspace_diagnostics<cr>', 'Show all troubles in project'},
          },
          q = {
            name = 'Quick actions',
            e = {'<cmd>EslintFixAll<cr>', 'Fix all (eslint)'},
            d = {'<cmd>TroubleToggle document_diagnostics<cr>', 'Show all troubles in file'},
            h = {'<cmd>noh<cr>', 'Clear highlights'},
            q = {'<cmd>lua vim.lsp.buf.code_action()<CR>', 'Code actions'},
            r = {'<cmd>TroubleToggle lsp_references<cr>', 'References'},
            s = { '<cmd>w<cr>', 'Save file' },
            t = { '<cmd>ToggleTerm<cr>', 'ToggleTerminal' },
          },
        },
        ['<esc>'] = { '<C-\\><C-n>', 'Back to normal mode', mode='t' },
        g = {
          ['('] = {'^', 'Start of line (non-blank)'},
          [')'] = {'g_', 'End of line (non-blank)'},
        },
        H = {'<cmd>bprevious<cr>', 'Previous buffer'},
        L = {'<cmd>bnext<cr>', 'Next buffer'},
      })
    end,
  },
}
