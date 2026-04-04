local M = {}

function M.setup_diagnostics()
  -- Define the text table directly using the severity constants as keys
  local diagnostic_signs = {
    [vim.diagnostic.severity.ERROR] = " ",
    [vim.diagnostic.severity.WARN] = " ",
    [vim.diagnostic.severity.HINT] = "⚑",
    [vim.diagnostic.severity.INFO] = " ",
  }

  vim.diagnostic.config {
    signs = {
      -- Pass the table directly
      text = diagnostic_signs,
    },
    virtual_text = {
      prefix = "●",
      spacing = 4,
    },
    float = {
      border = "rounded",
      source = "always",
    },
    update_in_insert = false,
    severity_sort = true,
  }
end

return M
