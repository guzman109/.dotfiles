return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({
        variant = "auto", -- auto, main, moon, or dawn
        dark_variant = "main", -- main, moon, or dawn
        dim_inactive_windows = false,
        extend_background_behind_borders = true,

        enable = {
          terminal = true,
          legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
          migrations = true, -- Handle deprecated options automatically
        },

        styles = {
          bold = true,
          italic = true,
          transparency = false,
        },

        groups = {
          border = "muted",
          link = "iris",
          panel = "surface",

          error = "love",
          hint = "iris",
          info = "foam",
          note = "pine",
          todo = "rose",
          warn = "gold",

          git_add = "foam",
          git_change = "rose",
          git_delete = "love",
          git_dirty = "rose",
          git_ignore = "muted",
          git_merge = "iris",
          git_rename = "pine",
          git_stage = "iris",
          git_text = "rose",
          git_untracked = "subtle",

          h1 = "iris",
          h2 = "foam",
          h3 = "rose",
          h4 = "gold",
          h5 = "pine",
          h6 = "foam",
        },

        highlight_groups = {
          Comment = { fg = "foam" },
          VertSplit = { fg = "muted", bg = "muted" },
        },

        before_highlight = function(group, highlight, palette)
          -- Disable all undercurls
          if highlight.undercurl then
            highlight.undercurl = false
          end
          --
          -- Change palette colour
          if highlight.fg == palette.pine then
            highlight.fg = palette.foam
          end
        end,
      })

      -- vim.cmd("colorscheme rose-pine")
      vim.cmd("colorscheme rose-pine-main")
      vim.cmd("colorscheme rose-pine-moon")
      vim.cmd("colorscheme rose-pine-dawn")
    end,
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
          "rose-pine-main",
          "rose-pine-dawn",
          "rose-pine-moon",
          "tokyonight-storm",
          "tokyonight-night",
          "tokyonight-moon",
          "tokyonight-day",
        }, -- Your list of installed colorschemes
        themeConfigFile = "~/.config/nvim/lua/plugins/color-scheme.lua", -- Described below
        livePreview = true, -- Apply theme while browsing. Default to true.
      })
      vim.keymap.set({ "n", "v", "t" }, "<leader>tt", "<cmd>Themery<cr>", { desc = "Open Themes" })
      vim.keymap.set({ "n", "v", "t" }, "<leader>td", "<cmd>colorscheme rose-pine-dawn<cr>", { desc = "Day Theme" })
      vim.keymap.set({ "n", "v", "t" }, "<leader>tn", "<cmd>colorscheme rose-pine-moon<cr>", { desc = "Night Theme" })

      -- im.keymap.set(),
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine-moon",
    },
  },
}
