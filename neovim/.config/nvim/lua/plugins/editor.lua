--- @param venv_path string A string containing the absolute path to selected virtualenv
--- @param venv_python string A string containing the absolute path to python binary in selected venv
function hook_molten(venv_path)
  vim.g.python3_host_prog = vim.fn.expand(venv_path)
end
return {
  {
    "benlubas/molten-nvim",
    version = "^1.0.0", -- use version <2.0.0 to avoid breaking changes
    build = ":UpdateRemotePlugins",
    init = function()
      vim.g.python3_host_prog = vim.fn.expand("~/.virtualenvs/neovim/bin/python3")
    end,
  },
  {
    "linux-cultist/venv-selector.nvim",
    opts = {
      changed_venv_hooks = {
        hook_molten,
      },
    },
  },
}
