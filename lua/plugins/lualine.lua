return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = function()
    local function lsp_name()
      local msg = "No Active LSP"
      local clients = vim.lsp.get_clients()
      if next(clients) == nil then return msg end
      for _, client in ipairs(clients) do
        local filetypes = client.config.filetypes
        if filetypes and vim.fn.index(filetypes, vim.bo.filetype) ~= -1 then
          return "  " .. client.name
        end
      end
      return msg
    end

    return {
      options = {
        theme = "kanagawa",
        globalstatus = true,
        disabled_filetypes = { statusline = { "dashboard", "alpha", "starter" } },
        component_separators = { left = "|", right = "|" },
        section_separators = { left = "", right = "" },
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = {
          "branch",
          { "diff", symbols = { added = " ", modified = " ", removed = " " } },
        },
        lualine_c = {
          { "diagnostics", symbols = { error = " ", warn = " ", info = " ", hint = " " } },
          { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
          { "filename", path = 1, symbols = { modified = "[+]", readonly = "[-]", unnamed = "[No Name]" } },
        },
        lualine_x = {
            { lsp_name, icon = "⚡", color = { fg = "#C8C093", gui = "bold" } },
            "encoding",
            "fileformat",
        },
        lualine_y = {
          "progress",
        },
        lualine_z = {
          { "datetime", style = "%H:%M" },
        },
      },
    }
  end,
}
