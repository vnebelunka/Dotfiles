return {
  {
    "saghen/blink.cmp",
    dependencies = { "rafamadriz/friendly-snippets", "giuxtaposition/blink-cmp-copilot" },
    version = "*",
    opts = {
      keymap = { preset = "super-tab" },
      appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = "mono",
      },

      completion = {
        -- Inline preview of the suggestion
        ghost_text = { enabled = true },

        menu = {
          -- 'n' for North (above), 's' for South (below)
          -- Prioritize showing the menu above the cursor line
          direction_priority = { "n", "s" },
        },

        documentation = {
          auto_show = true,
          auto_show_delay_ms = 500,
        },
      },

      sources = {
        default = { "lsp", "path", "snippets", "buffer", "copilot" },
        providers = {
          copilot = {
            name = "copilot",
            module = "blink-cmp-copilot",
            score_offset = 100, -- Adjust priority (higher shows up first)
            async = true,
          },
        },
      },
    },
  },
}
