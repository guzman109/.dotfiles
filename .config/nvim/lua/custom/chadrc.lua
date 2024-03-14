---@type ChadrcConfig
for i = 1, 9, 1 do
	vim.keymap.set("n", string.format("<A-%s>", i), function()
		vim.api.nvim_set_current_buf(vim.t.bufs[i])
	end)
end
vim.opt.relativenumber = true

local M = {}

M.mappings = require("custom.mappings")
M.plugins = "custom.plugins"

M.ui = {
	theme = "nord",
	theme_toggle = {
		"catppuccin",
		"nord",
	},
	statusline = {
		theme = "minimal",
		separator_style = "round",
	},
	tabufline = {
		lazyload = false,
		show_numbers = true,
	},
	nvdash = {
		load_on_startup = true,
	},
}

return M
