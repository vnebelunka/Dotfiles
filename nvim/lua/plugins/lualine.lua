-- lua/plugins/lualine.lua
return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "SmiteshP/nvim-navic", "nvim-tree/nvim-web-devicons" },
  opts = function()
    -- Safe function to get navic location
    local function get_navic_location()
      local status, navic = pcall(require, "nvim-navic")
      if status and navic.is_available() then
        return navic.get_location()
      end
      return ""
    end

    return {
      options = {
        theme = "auto",
        globalstatus = true, -- Use a single statusline at the bottom
        disabled_filetypes = {
          statusline = { "dashboard", "alpha", "neo-tree" },
          winbar = { "help", "packer", "neo-tree", "Trouble" },
        },
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { "filename" },
        lualine_x = { "encoding", "fileformat", "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
      -- WINBAR: This shows the current scope at the top of each window
      winbar = {
        lualine_c = {
          {
            get_navic_location,
            cond = function()
              local status, navic = pcall(require, "nvim-navic")
              return status and navic.is_available()
            end,
          },
        },
      },
      inactive_winbar = {
        lualine_c = { "filename" },
      },
    }
  end,
}
