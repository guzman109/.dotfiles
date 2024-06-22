--type conform.options
local opts = {
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
      cwd = require("conform.util").root_file {
        "pyproject.toml",
        "ruff.toml",
        ".ruff.toml",
      },
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
      cwd = require("conform.util").root_file {
        "pyproject.toml",
        "ruff.toml",
        ".ruff.toml",
      },
    },
  },
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "ruff_format", "ruff_fix" },
    typescript = { "deno_fmt" },
    json = { "prettier" },
  },
}
-- return opts
require("conform").setup(opts)
