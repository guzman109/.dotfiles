local opts = {
  linters_by_ft = {
    python = {"mypy"},
  }
}

require("lint").setup(opts)
