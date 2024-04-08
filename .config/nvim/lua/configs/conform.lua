--type conform.options
local opts = {
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

  -- adding same formatter for multiple filetypes can look too much work for some
  -- instead of the above code you could just use a loop! the config is just a table after all!

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

require("conform").setup(opts)
