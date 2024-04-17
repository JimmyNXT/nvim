---@type ChadrcConfig
local M = {}

local highlights = require "highlights"
M.ui = {
  statusline = {
    overriden_modules = function(modules)
      modules[table.maxn(modules) + 1] = (function()
        return "%#St_time_sep#%#St_time_icon#󰥔 %#St_time_text#" .. os.date " %H:%M  "
      end)()
    end,
  },
  theme = "catppuccin",
  theme_toggle = { "catppuccin", "catppuccin" },

  hl_override = highlights.override,
  hl_add = highlights.add,
}

return M
