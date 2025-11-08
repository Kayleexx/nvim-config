return {
  -- Install and configure Kanagawa
  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    opts = {
      transparent = true,
      theme = "wave",
      overrides = function(colors)
        local theme = colors.theme
        return {
          -- Make floating windows transparent/darker
          NormalFloat = { bg = "none" },
          FloatBorder = { bg = "none" },

          -- Make plugin manager windows (Lazy, Mason) match better
          LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
          MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },

          -- Optional: Make line numbers cooler (grey instead of default)
          LineNr = { fg = theme.ui.bg_p2 },
        }
      end,
    },
  },

  -- Tell LazyVim to use it
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },
}
