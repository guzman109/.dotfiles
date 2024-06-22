local opts = {
  linters_by_ft = {
    python = { "mypy", "ruff" },
    typescript = { "deno" },
    javascript = { "deno" },
  },
}

require("lint").setup(opts)
