return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    local theme = require("lualine.themes.kanagawa")
    -- You can customize further here if you want later
    opts.options.theme = theme
  end,
}
