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
        "dockerfile-language-server",
        "docker-compose-language-service",
        "pyright",

        -- Formatters
        "stylua",
        "prettier",

        -- Linters
        "mypy",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ruff_lsp = {
          mason = false,
        },
        denols = {
          mason = false,
        },
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      lsp_fallback = true,

      formatters_by_ft = {
        lua = { "stylua" },
        python = { "ruff_format" },
        typescript = { "deno_fmt" },
        javascript = { "ruff_fmt" },
        json = { "prettier" },
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        python = { "mypy" },
        typescript = { "deno" },
      },
    },
  },
}
