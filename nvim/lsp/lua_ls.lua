return {
  -- Move root_markers out of settings
  root_markers = { '.git', 'init.lua', '.stylua.toml' },
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        checkThirdParty = false,
        -- Use a cleaner way to pull in Neovim APIs
        library = vim.api.nvim_get_runtime_file("", true),
      },
    },
  },
}

