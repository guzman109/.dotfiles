local plugins = {
  {
    "lukas-reineke/indent-blankline.nvim",
    opts = function(_, opts)
      -- Other blankline configuration here
      return require("indent-rainbowline").make_opts(opts)
    end,
    dependencies = {
      "TheGLander/indent-rainbowline.nvim",
    },
  },
  -- {
  --   "nomnivore/ollama.nvim",
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --   },
  --
  --   -- All the user commands added by the plugin
  --   cmd = { "Ollama", "OllamaModel", "OllamaServe", "OllamaServeStop" },
  --
  --   keys = {
  --     -- Sample keybind for prompt menu. Note that the <c-u> is important for selections to work properly.
  --     {
  --       "<leader>oo",
  --       ":<c-u>lua require('ollama').prompt()<cr>",
  --       desc = "ollama prompt",
  --       mode = { "n", "v" },
  --     },
  --
  --     -- Sample keybind for direct prompting. Note that the <c-u> is important for selections to work properly.
  --     {
  --       "<leader>oG",
  --       ":<c-u>lua require('ollama').prompt('Generate_Code')<cr>",
  --       desc = "ollama Generate Code",
  --       mode = { "n", "v" },
  --     },
  --   },
  --
  --   ---@type Ollama.Config
  --   opts = {
  --     -- your configuration overrides
  --   },
  -- },
  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      git = { enable = true },
    },
  },
  {
    "cameron-wags/rainbow_csv.nvim",
    config = true,
    ft = {
      "csv",
      "tsv",
      "csv_semicolon",
      "csv_whitespace",
      "csv_pipe",
      "rfc_csv",
      "rfc_semicolon",
    },
    cmd = {
      "RainbowDelim",
      "RainbowDelimSimple",
      "RainbowDelimQuoted",
      "RainbowMultiDelim",
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "lua",
        "python",
        "dockerfile",
        "bash",
        "rust",
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- LSP
        "lua-language-server",
        "pyright",
        "dockerfile-language-server",
        -- Formatters
        "stylua",
        "prettier",
        -- Linters
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
    "stevearc/conform.nvim",
    --  for users those who want auto-save conform + lazyloading!
    -- event = "BufWritePre"
    -- config = function()
    --   require "configs.conform"
    -- end,
	    config = function()
      require "configs.conform"
    end,
  },
  {
    "mfussenegger/nvim-lint",
    config = function()
      require "configs.lint"
    end,
  },
  -- Rainbow Delimiters
  {
    "HiPhish/rainbow-delimiters.nvim",
  },
  {
    "kevinhwang91/nvim-ufo",
    event = "VeryLazy",
    dependencies = "kevinhwang91/promise-async",
    config = function()
      vim.o.foldcolumn = "1" -- '0' is not bad
      vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
      vim.o.foldlevelstart = 99
      vim.o.foldenable = true

      -- Using ufo provider need remap `zR` and `zM`. If Neovim is 0.6.1, remap yourself
      vim.keymap.set("n", "zR", require("ufo").openAllFolds)
      vim.keymap.set("n", "zM", require("ufo").closeAllFolds)
      vim.keymap.set("n", "zK", function()
        local winid = require("ufo").peekFoldedLinesUnderCursor()
        if not winid then
          vim.lsp.buf.hover()
        end
      end, { desc = "Peek Fold" })

      require("ufo").setup {
        provider_selector = function(bufnr, filetype, buftype)
          return { "lsp", "indent" }
        end,
      }
    end,
  },
}
return plugins
