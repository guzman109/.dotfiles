return {
  {
    "Biscuit-Theme/nvim",
    name = "biscuit",
    opts = {
      style = {
        "biscuit-dark",
        "biscuit-light",
      },
    },
  },
  {
    "zaldih/themery.nvim",
    config = function()
      require("themery").setup({
        themes = {
          "catppuccin-mocha",
          "catppuccin-latte",
          "catppuccin-frappe",
          "catppuccin-macchiato",
          "tokyonight-storm",
          "tokyonight-night",
          "tokyonight-moon",
          "tokyonight-day",
          "biscuit",
          -- "biscuit-dark",
          -- "biscuit-light",
        }, -- Your list of installed colorschemes
        livePreview = true, -- Apply theme while browsing. Default to true.
      })
      vim.keymap.set({ "n", "v" }, "<leader>tt", "<cmd>Themery<cr>", { desc = "Open Themes" })
      vim.keymap.set({ "n", "v" }, "<leader>td", "<cmd>colorscheme tokyonight-day<cr>", { desc = "Day Theme" })
      vim.keymap.set({ "n", "v" }, "<leader>tn", "<cmd>colorscheme tokyonight-storm<cr>", { desc = "Night Theme" })

      -- im.keymap.set(),
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "biscuit",
    },
  },
}
