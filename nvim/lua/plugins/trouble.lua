return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  -- Load keymaps during initialization
  init = function()
    require("config.keymaps").setup_trouble()
  end,
  opts = {}, -- Default configuration
}

