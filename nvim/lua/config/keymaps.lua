-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Delete Move Lines in Inser Mode
vim.keymap.del("i", "<A-j>")
vim.keymap.del("i", "<A-k>")

-- Move in Insert Mode
vim.keymap.set("i", "<A-h>", "<Left>", { desc = "Move left" })
vim.keymap.set("i", "<A-j>", "<Down>", { desc = "Move down" })
vim.keymap.set("i", "<A-k>", "<Up>", { desc = "Move up" })
vim.keymap.set("i", "<A-l>", "<Right>", { desc = "Move right" })

-- Move Lines
vim.keymap.set("n", "<C-j>", "<cmd>m .+1<cr>==", { desc = "Move down" })
vim.keymap.set("n", "<C-k>", "<cmd>m .-2<cr>==", { desc = "Move up" })
vim.keymap.set("i", "<C-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
vim.keymap.set("i", "<C-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
vim.keymap.set("v", "<C-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
vim.keymap.set("v", "<C-k>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

-- Move to window using the <ctrl> hjkl keys
vim.keymap.set("n", "<A-h>", "<A-w>h", { desc = "Go to left window", remap = true })
vim.keymap.set("n", "<A-j>", "<A-w>j", { desc = "Go to lower window", remap = true })
vim.keymap.set("n", "<A-k>", "<A-w>k", { desc = "Go to upper window", remap = true })
vim.keymap.set("n", "<A-l>", "<A-w>l", { desc = "Go to right window", remap = true })

-- Resize window using <ctrl> arrow keys
vim.keymap.set("n", "<A-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
vim.keymap.set("n", "<A-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
vim.keymap.set("n", "<A-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
vim.keymap.set("n", "<A-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

vim.keymap.set(
  "n",
  "<leader>ur",
  "<Cmd>nohlsearch<Bar>diffupdate<Bar>normal! <A-L><CR>",
  { desc = "Redraw / clear hlsearch / diff update" }
)

-- Terminal Mappings
vim.keymap.set("t", "<A-h>", "<cmd>wincmd h<cr>", { desc = "Go to left window" })
vim.keymap.set("t", "<A-j>", "<cmd>wincmd j<cr>", { desc = "Go to lower window" })
vim.keymap.set("t", "<A-k>", "<cmd>wincmd k<cr>", { desc = "Go to upper window" })
vim.keymap.set("t", "<A-l>", "<cmd>wincmd l<cr>", { desc = "Go to right window" })
vim.keymap.set("t", "<A-/>", "<cmd>close<cr>", { desc = "Hide Terminal" })

-- windows
vim.keymap.set("n", "<leader>ww", "<A-W>p", { desc = "Other window", remap = true })
vim.keymap.set("n", "<leader>wd", "<A-W>c", { desc = "Delete window", remap = true })
vim.keymap.set("n", "<leader>w-", "<A-W>s", { desc = "Split window below", remap = true })
vim.keymap.set("n", "<leader>w|", "<A-W>v", { desc = "Split window right", remap = true })
vim.keymap.set("n", "<leader>-", "<A-W>s", { desc = "Split window below", remap = true })
vim.keymap.set("n", "<leader>|", "<A-W>v", { desc = "Split window right", remap = true })
