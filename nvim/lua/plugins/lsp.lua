return {
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    dependencies = { "p00f/clangd_extensions.nvim" },
    config = function()
      require("config.ui").setup_diagnostics()

      -- Global defaults
      vim.lsp.config("*", {
        root_markers = { ".git", "init.lua" },
      })

      -- This now automatically loads ~/.config/nvim/lsp/clangd.lua
      vim.lsp.enable { "lua_ls", "clangd", "pyright", "rust_analyzer", "ltex_plus" }

      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local client = vim.lsp.get_client_by_id(args.data.client_id)
          if client and client.name == "clangd" then
            require("clangd_extensions").setup { server = { capabilities = client.capabilities } }
          end
          -- setup type deduction
          if client and client:supports_method "textDocument/inlayHint" then
            vim.lsp.inlay_hint.enable(true, { bufnr = args.buf })
          end
          require("config.keymaps").setup_lsp(args.buf)
        end,
      })
    end,
  },
}
