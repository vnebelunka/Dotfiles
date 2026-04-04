return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup {
      suggestion = {
        suggestion = { enabled = false },
        panel = { enabled = false },
      },
      panel = { enabled = false }, -- Panel is often redundant with suggestions
    }
  end,
}
