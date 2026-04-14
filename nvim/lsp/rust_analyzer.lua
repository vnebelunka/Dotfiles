-- File: ~/.config/nvim/lua/lsp/rust_analyzer.lua
return {
  -- Explicitly point to the rustup shim
  cmd = { vim.fn.expand "$HOME/.cargo/bin/rust-analyzer" },
  settings = {
    ["rust-analyzer"] = {
      -- This is the key to fixing "No information available" for std traits
      rustc = {
        source = "discover",
      },
      cargo = {
        allFeatures = true,
        loadOutDirsFromCheck = true,
      },
      procMacro = {
        enable = true,
      },
    },
  },
}
