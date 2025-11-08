return {
  "folke/snacks.nvim",
  opts = {
    terminal = {
      win = {
        -- This attempts to hide standard borders and titles to make it super clean
        style = "minimal",
        border = "rounded", -- or "none" if you want it TRULY invisible floating in space
        title = "", -- Removes the title text
        title_pos = "center",
      },
    },
  },
}
