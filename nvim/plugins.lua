local plugins = {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "vim",
      "lua",
      "python",
      "dockerfile",
      "bash",
      "vue",
      "typescript",
      "javascript",

    }
  }
}
return plugins
