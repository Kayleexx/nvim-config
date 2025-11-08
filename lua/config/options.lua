-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
-- -- Set a custom color for dashboard menu items
-- "SnacksDashboardIcon" changes the little icons
-- "SnacksDashboardDesc" changes the text description
-- "SnacksDashboardKey" changes the shortcut key (e.g., 'f', 'n')

-- RONIN PRESET
vim.api.nvim_set_hl(0, "SnacksDashboardDesc", { fg = "#C8C093", bold = true }) -- Antique Gold
vim.api.nvim_set_hl(0, "SnacksDashboardIcon", { fg = "#E6C384" }) -- Brighter Gold
vim.api.nvim_set_hl(0, "SnacksDashboardKey", { fg = "#FF9E3B" }) -- Amber for keys
vim.api.nvim_set_hl(0, "SnacksDashboardHeader", { fg = "#C8C093" }) -- Matches the text color exactly
vim.api.nvim_set_hl(0, "SnacksDashboardFooter", { fg = "#717C7C", force = true })
