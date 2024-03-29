return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "lua",
        "python",
        "dockerfile",
        "bash",
        "typescript",
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- LSP
        "lua-language-server",
        "ruff-lsp",
        "dockerfile-language-server",
        "docker-compose-language-service",
        "pyright",

        -- Formatters
        "stylua",
        "ruff",

        -- Linters
        "mypy",
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      lsp_fallback = true,

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
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        python = { "mypy" },
      },
    },
  },
}
