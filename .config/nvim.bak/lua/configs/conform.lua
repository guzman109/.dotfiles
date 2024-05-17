--type conform.options
local opts = {
  lsp_fallback = true,

  formatters_by_ft = {
    lua = { "stylua" },
    python = { "ruff_format", "ruff_fix"},
    typescript = { "deno_fmt" },
    javascript = { "deno_fmt" },
    json = { "prettier" },
    yaml = { "yq" },
  },

  -- adding same formatter for multiple filetypes can look too much work for some
  -- instead of the above code you could just use a loop! the config is just a table after all!

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}
return opts
-- require("conform").setup(opts)