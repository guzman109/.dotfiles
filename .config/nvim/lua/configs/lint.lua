local opts = {
  linters = {
    rust_clippy = {
      cmd = "cargo clippy --fix",
      stdin = true,
      append_fname = true,
      args = {},
      stream = "both",
      ignore_exitcode = false,
      -- parser = your_parse_function,
    },
  },
  linters_by_ft = {
    python = { "mypy", "ruff" },
    typescript = { "deno" },
    javascript = { "deno" },
    rust = { "" },
  },
}

require("lint").setup(opts)
