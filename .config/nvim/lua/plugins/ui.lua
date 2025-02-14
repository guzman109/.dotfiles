-- Bubbles config for lualine
-- Author: lokesh-krishna
-- MIT license, see LICENSE for more details.

-- stylua: ignore
local colors = {
  blue   = '#80a0ff',
  cyan   = '#79dac8',
  black  = '#080808',
  white  = '#c6c6c6',
  red    = '#ff5189',
  violet = '#d183e8',
  grey   = '#303030',
}

local bubbles_theme = {
  normal = {
    a = { fg = colors.black, bg = colors.violet },
    b = { fg = colors.white, bg = colors.grey },
    c = { fg = colors.white },
  },

  insert = { a = { fg = colors.black, bg = colors.blue } },
  visual = { a = { fg = colors.black, bg = colors.cyan } },
  replace = { a = { fg = colors.black, bg = colors.red } },

  inactive = {
    a = { fg = colors.white, bg = colors.black },
    b = { fg = colors.white, bg = colors.black },
    c = { fg = colors.white },
  },
}
local actions = require("fzf-lua.actions")
return {
  -- { "akinsho/toggleterm.nvim", version = "*", config = true },
  {
    "HiPhish/rainbow-delimiters.nvim",
  },
  -- {
  --   "kevinhwang91/nvim-ufo",
  --   event = "VeryLazy",
  --   dependencies = "kevinhwang91/promise-async",
  --   config = function()
  --     vim.o.foldcolumn = "1" -- '0' is not bad
  --     vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
  --     vim.o.foldlevelstart = 99
  --     vim.o.foldenable = true
  --
  --     -- Using ufo provider need remap `zR` and `zM`. If Neovim is 0.6.1, remap yourself
  --     vim.keymap.set("n", "zR", require("ufo").openAllFolds)
  --     vim.keymap.set("n", "zM", require("ufo").closeAllFolds)
  --     vim.keymap.set("n", "zK", function()
  --       local winid = require("ufo").peekFoldedLinesUnderCursor()
  --       if not winid then
  --         vim.lsp.buf.hover()
  --       end
  --     end, { desc = "Peek Fold" })
  --
  --     require("ufo").setup({
  --       provider_selector = function(bufnr, filetype, buftype)
  --         return { "lsp", "indent" }
  --       end,
  --     })
  --   end,
  -- },
  -- change trouble config
  {
    "folke/trouble.nvim",
    -- opts will be merged with the parent spec
    opts = { use_diagnostic_signs = true },
  },
  -- Use <tab> for completion and snippets (supertab)
  -- first: disable default <tab> and <s-tab> behavior in LuaSnip
  {
    "L3MON4D3/LuaSnip",
    keys = function()
      return {}
    end,
  },
    -- show hideen files in neotree
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
        },
      },
    },
  },
    {
    "folke/which-key.nvim",
    opts = function(_, opts)
      opts.icons = {
        rules = {
          { pattern = "themes", icon = LazyVim.config.icons.kinds.Color, color = "orange" }
        }
      }
    end,
  },
  {
    "nvim-lualine/lualine.nvim",

    require("lualine").setup({
      options = {
        theme = bubbles_theme,
        component_separators = "",
        section_separators = { left = "", right = "" },
      },
      sections = {
        lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
        lualine_b = { "filename", "branch" },
        lualine_c = {
          "%=", --[[ add your center compoentnts here in place of this comment ]]
        },
        lualine_x = {},
        lualine_y = { "filetype", "progress" },
        lualine_z = {
          { "location", separator = { right = "" }, left_padding = 2 },
        },
      },
      inactive_sections = {
        lualine_a = { "filename" },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { "location" },
      },
      tabline = {},
      extensions = {},
    }),
  },
  {
    "ibhagwan/fzf-lua",
    opts = {
      defaults = require("fzf-lua.profiles.skim"),
      winopts = {
        preview = {
          default = "bat",
          scrollbar = "false",
        },
      },
      fzf_opts = {
        ["--no-scrollbar"] = false,
      },
      actions = {
        ["default"] = actions.file_edit,
      },
    },
  },
}
