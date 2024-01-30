-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {
  -- Rainbow Delimiters
  {
    "HiPhish/rainbow-delimiters.nvim",
    event = "VeryLazy",
  },
  -- Code Folding
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

      require("ufo").setup({
        provider_selector = function(bufnr, filetype, buftype)
          return { "lsp", "indent" }
        end,
      })
    end,
  },
  -- Mason
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- LSP
        "lua-language-server",
        "ruff-lsp",
        "vetur-vls",
        "typescript-language-server",
        "dockerfile-language-server",
        "docker-compose-language-service",
        -- Formatters
        "stylua",
        "prettier",
        "ruff",
        -- Linters
        "mypy",
        "pylint",
        "hadolint",
        -- Debuggers
        "debugpy",
      },
    },
  },
  -- Conform
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        css = { "prettier" },
        html = { "prettier" },
        python = { "ruff_format" },
        typescript = { "prettier" },
        javascript = { "prettier" },
        json = { "prettier" },
        vue = { "prettier" },
      },
    },
  },
  -- NVIM-Lint
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        python = { "mypy", "pylint", "ruff" },
        javascript = { "eslint" },
        typescript = { "eslint" },
        dockerfile = { "hadolint" },
        vue = { "eslint" },
      },
    },
  },
  -- Comment
  {
    "numToStr/Comment.nvim",
    opts = {
      -- add any options here
    },
    lazy = false,
  },
}
