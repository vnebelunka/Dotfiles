return {
  {
    "williamboman/mason.nvim",
    opts = {}, -- Calls require("mason").setup()
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    opts = {
      ensure_installed = { "lua_ls", "stylua" }, -- List servers to auto-install
    },
  },
}
