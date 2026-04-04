return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false, -- Disable lazy loading
    build = ":TSUpdate",
    -- Using 'opts' instead of 'config' handles the module loading automatically
    opts = {
      ensure_installed = {
        "c",
        "lua",
        "vim",
        "vimdoc",
        "query",
        "markdown",
        "markdown_inline",
        "cpp",
        "rust",
        "latex",
        "python",
        "julia",
        "fortran",
      },

      highlight = { enable = true },
      indent = { enable = true },
      -- These satisfy the "missing required field" errors from earlier
      modules = {},
      ignore_install = {},
      sync_install = false,
      auto_install = true,
    },
  },
}
