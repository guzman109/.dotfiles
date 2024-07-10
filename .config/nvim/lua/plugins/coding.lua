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
        "pyright",

        -- Formatters
        "stylua",
        "prettier",

        -- Linters
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
      formatters = {
        ruff_format = {
          meta = {
            url = "https://docs.astral.sh/ruff/",
            description = "An extremely fast Python linter, written in Rust. Formatter subcommand.",
          },
          command = "ruff",
          args = {
            "format",
            "--force-exclude",
            "--stdin-filename",
            "$FILENAME",
            "-",
          },
          stdin = true,
          cwd = require("conform.util").root_file({
            "pyproject.toml",
            "ruff.toml",
            ".ruff.toml",
          }),
        },
        ruff_fix = {
          meta = {
            url = "https://docs.astral.sh/ruff/",
            description = "An extremely fast Python linter, written in Rust. Fix lint errors.",
          },
          command = "ruff",
          args = {
            "check",
            "--fix",
            "--force-exclude",
            "--exit-zero",
            "--no-cache",
            "--stdin-filename",
            "$FILENAME",
            "-",
          },
          stdin = true,
          cwd = require("conform.util").root_file({
            "pyproject.toml",
            "ruff.toml",
            ".ruff.toml",
          }),
        },
      },
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "ruff_format", "ruff_fix" },
        typescript = { "deno_fmt" },
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
