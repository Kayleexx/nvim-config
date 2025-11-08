return {
  {
    "andweeb/presence.nvim",
    event = "VeryLazy",
    opts = {
      neovim_image_text = "Ricing Neovim > VS Code",
      main_image = "file",
      log_level = nil,
    },
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
      indent = { char = "│", tab_char = "│" },
      scope = { enabled = false },
      exclude = {
        filetypes = {
          "help",
          "alpha",
          "dashboard",
          "neo-tree",
          "Trouble",
          "trouble",
          "lazy",
          "mason",
          "notify",
          "toggleterm",
          "lazyterm",
        },
      },
    },
    config = function(_, opts)
      local hooks = require("ibl.hooks")
      hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E46876" })
        vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E6C384" })
        vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#7E9CD8" })
        vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#FFA066" })
        vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98BB6C" })
        vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#957FB8" })
        vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#6A9589" })
      end)
      require("ibl").setup(
        vim.tbl_deep_extend(
          "force",
          opts,
          {
            indent = {
              highlight = {
                "RainbowRed",
                "RainbowYellow",
                "RainbowBlue",
                "RainbowOrange",
                "RainbowGreen",
                "RainbowViolet",
                "RainbowCyan",
              },
            },
          }
        )
      )
    end,
  },
  {
    {
    "echasnovski/mini.animate",
    event = "VeryLazy",
    opts = function()
      local animate = require("mini.animate")
      return {
        scroll = { timing = animate.gen_timing.linear({ duration = 150, unit = "total" }) },
        cursor = { timing = animate.gen_timing.linear({ duration = 80, unit = "total" }) },
      }
    end,
  },
  }
}
