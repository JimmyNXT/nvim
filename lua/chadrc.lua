-- This file  needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

local highlights = require "custom.highlights"

M.ui = {
	theme = "catppuccin",

	statusline = {
		overriden_modules = function(modules)
		  modules[table.maxn(modules) + 1] = (function()
			return "%#St_time_sep#%#St_time_icon#󰥔 %#St_time_text#" .. os.date " %H:%M  "
		  end)()
		end,
	  },
	 
	  hl_override = highlights.override,
	  hl_add = highlights.add,
}

return M
