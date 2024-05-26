return {
  {
    "Biscuit-Theme/nvim",
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
        themeConfigFile = "~/.config/nvim/lua/plugins/color-scheme.lua", -- Described below
        livePreview = true, -- Apply theme while browsing. Default to true.
      })
      vim.keymap.set({ "n", "v", "t" }, "<leader>tt", "<cmd>Themery<cr>", { desc = "Open Themes" })
      vim.keymap.set({ "n", "v", "t" }, "<leader>td", "<cmd>colorscheme tokyonight-day<cr>", { desc = "Day Theme" })
      vim.keymap.set({ "n", "v", "t" }, "<leader>tn", "<cmd>colorscheme tokyonight-moon<cr>", { desc = "Night Theme" })

      -- im.keymap.set(),
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight-moon",
    },
  },
}
