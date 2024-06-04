---@type ChadrcConfig
for i = 1, 9, 1 do
	vim.keymap.set("n", string.format("<A-%s>", i), function()
		vim.api.nvim_set_current_buf(vim.t.bufs[i])
	end)
end
vim.opt.relativenumber = true

local M = {}

M.ui = {
	theme = "rosepine-dawn",
  toggle_transparency = true,
	theme_toggle = {
		"rosepine",
		"rosepine-dawn",
	},
	statusline = {
		-- theme = "defualt",
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
