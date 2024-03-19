require("nvchad.mappings")

-- n, v, i, t = mode names

local map_del = vim.keymap.del
local map_set = vim.keymap.set

map_set("n", ";", ":", { desc = "CMD enter command mode" })

-- Disable old keymaps
map_del("i", "<C-b>")
map_del("i", "<C-e>")
map_del("i", "<C-h>")
map_del("i", "<C-l>")
map_del("i", "<C-j>")
map_del("i", "<C-k>")
map_del("n", "<C-h>")
map_del("n", "<C-l>")
map_del("n", "<C-j>")
map_del("n", "<C-k>")
map_del("n", "<C-s>")
map_del("n", "<C-c>")
map_del("n", "<C-n>")
map_del("t", "<C-x>")
map_del("t", "<A-h>")
-- map_del("n", "<C-u>")
-- map_del("n", "<C-d>")
-- map_del("n", "<C-f>")
-- map_del("n", "<C-F>")

-- Move a half page up & down
map_set("n", "<A-u>", "<C-u>")
map_set("n", "<A-d>", "<C-d>")

-- Move a full page up & down
map_set("n", "<A-f>", "<C-f>")
map_set("n", "<A-F>", "<C-F>")

-- go to  beginning and end
map_set("i", "<A-b>", "<ESC>^i", { desc = "Beginning of line" })
map_set("i", "<A-e>", "<End>", { desc = "End of line" })

-- navigate within insert mode
map_set("i", "<A-h>", "<Left>", { desc = "Move left" })
map_set("i", "<A-l>", "<Right>", { desc = "Move right" })
map_set("i", "<A-j>", "<Down>", { desc = "Move down" })
map_set("i", "<A-k>", "<Up>", { desc = "Move up" })

-- switch between windows
map_set("n", "<A-h>", "<C-w>h", { desc = "Window left" })
map_set("n", "<A-l>", "<C-w>l", { desc = "Window right" })
map_set("n", "<A-j>", "<C-w>j", { desc = "Window down" })
map_set("n", "<A-k>", "<C-w>k", { desc = "Window up" })

-- save
map_set("n", "<A-s>", "<cmd> w <CR>", { desc = "Save file" })

-- Copy all
map_set("n", "<A-c>", "<cmd> %y+ <CR>", { desc = "Copy whole file" })
--  format with conform
map_set("n", "<leader>fm", function()
	require("conform").format()
end, { desc = "formatting" })
map_set("n", "<leader>fl", function()
	require("lint").try_lint()
end, { desc = "linting" })

map_set(
	"t",
	"<A-x>",
	vim.api.nvim_replace_termcodes("<C-\\><C-N>", true, true, true),
	{ desc = "Escape terminal mode" }
)

-- toggle
map_set("n", "<A-n>", "<cmd> NvimTreeToggle <CR>", { desc = "Toggle nvimtree" })

-- -- toggle in terminal mode
-- map_set("t", "<A-i>",
--   function()
--     require("nvchad.term").toggle("float")
--   end,
--    { desc = "Toggle floating term",
-- })
--
-- map_set("t", "<A-t>",
--   function()
--     require("nvchad.term").toggle(pos = "sp", id = "htoggleTerm", size = 0.3)
--   end,
--    { desc = "Toggle horizontal term",
-- })
--
-- map_set("t", "<A-v>",
--   function()
--     require("nvchad.term").toggle(pos = "vsp", id = "vtoggleTerm", size = 0.3)
--   end,
--    { desc = "Toggle vertical term",
-- })
--
-- -- toggle in normal mode
-- map_set("n", "<A-i>",
--   function()
--     require("nvchad.term").toggle("float")
--   end,
--    { desc = "Toggle floating term",
-- })
--
map_set({ "n", "t" }, "<A-t>", function()
	require("nvchad.term").toggle({ pos = "sp", id = "htoggleTerm", size = 0.3 })
end, { desc = "Toggle horizontal term" })

-- map_set({"n", "t"}, "<A-v>",
--   function()
--     require("nvchad.term").toggle(pos = "vsp", id = "vtoggleTerm", size = 0.3)
--   end,
--    { desc = "Toggle vertical term",
-- })

-- new
map_set("n", "<leader>t", function()
	require("nvchad.term").new({ pos = "sp", size = 0.3 })
end, { desc = "New horizontal term" })

-- map_set("n", "<leader>v",
--   function()
--     require("nvchad.term").new(pos = "vsp", size = 0.3)
--   end,
--    { desc = "New vertical term",
-- })
