return {
  "akinsho/toggleterm.nvim",
  version = "*",
  keys = {
    { "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", desc = "Terminal Float" },
    { "<leader>th", "<cmd>ToggleTerm size=15 direction=horizontal<cr>", desc = "Terminal Horizontal" },
    { "<leader>tv", "<cmd>ToggleTerm size=80 direction=vertical<cr>", desc = "Terminal Vertical" },
  },
  config = function()
    require("toggleterm").setup {
      open_mapping = [[<c-\>]],
      insert_mappings = true,
      terminal_mappings = true,
      shade_terminals = true,
    }
    function _G.set_terminal_keymaps()
      local opts = { buffer = 0 }
      vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
      --vim.keymap.set("t", "<C-h>", [[<C-\><C-n><C-w>h]], opts)
      --vim.keymap.set("t", "<C-j>", [[<C-\><C-n><C-w>j]], opts)
      --vim.keymap.set("t", "<C-k>", [[<C-\><C-n><C-w>k]], opts)
      --vim.keymap.set("t", "<C-l>", [[<C-\><C-n><C-w>l]], opts)
    end
    vim.cmd "autocmd! TermOpen term://* lua set_terminal_keymaps()"
  end,
}
