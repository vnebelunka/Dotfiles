return {
  {
    "sainnhe/gruvbox-material",
    priority = 2000,
    config = function()
      -- Optional: Configure the palette/contrast before loading
      vim.g.gruvbox_material_background = "hard" -- 'hard', 'medium', 'soft'
      vim.g.gruvbox_material_foreground = "material" -- 'material', 'mix', 'original'
      vim.g.gruvbox_material_better_performance = 1

      -- Load the colorscheme
      vim.cmd.colorscheme "gruvbox-material"
    end,
  },
}
