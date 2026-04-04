return {
  -- Explicitly enable for these filetypes
  filetypes = { "markdown", "typst", "tex", "gitcommit" },
  settings = {
    ltex = {
      --language = "en-US",
      language = "ru-RU",
      additionalRules = {
        enablePickyRules = true,
        motherTongue = "ru-RU", -- Helps with Russian-specific grammar nuances
      },
      -- Enables checking both languages simultaneously
      enabledRules = {
        ["en-US"] = { "EN_DASH" },
        ["ru-RU"] = { "RU_DASH" },
      },
      dictionary = {
        ["en-US"] = {},
        ["ru-RU"] = {},
      },
    },
  },
}
