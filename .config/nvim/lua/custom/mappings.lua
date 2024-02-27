-- n, v, i, t = mode names

local M = {}

M.general = {
  i = {
    -- go to  beginning and end
    ["<A-b>"] = { "<ESC>^i", "Beginning of line" },
    ["<A-e>"] = { "<End>", "End of line" },

    -- navigate within insert mode
    ["<A-h>"] = { "<Left>", "Move left" },
    ["<A-l>"] = { "<Right>", "Move right" },
    ["<A-j>"] = { "<Down>", "Move down" },
    ["<A-k>"] = { "<Up>", "Move up" },
  },

  n = {
    -- switch between windows
    ["<A-h>"] = { "<A-w>h", "Window left" },
    ["<A-l>"] = { "<A-w>l", "Window right" },
    ["<A-j>"] = { "<A-w>j", "Window down" },
    ["<A-k>"] = { "<A-w>k", "Window up" },

    -- save
    ["<A-s>"] = { "<cmd> w <CR>", "Save file" },

    -- Copy all
    ["<A-c>"] = { "<cmd> %y+ <CR>", "Copy whole file" },
    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    }

  },

  t = {
    ["<A-x>"] = { vim.api.nvim_replace_termcodes("<A-\\><A-N>", true, true, true), "Escape terminal mode" },
  },
}



M.nvimtree = {
  n = {
    -- toggle
    ["<A-n>"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
  },
}


M.nvterm = {
  plugin = true,

  t = {
    -- toggle in terminal mode
    ["<A-i>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "Toggle floating term",
    },

    ["<A-t>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "Toggle horizontal term",
    },

    ["<A-v>"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
      "Toggle vertical term",
    },
  },

  n = {
    -- toggle in normal mode
    ["<A-i>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "Toggle floating term",
    },

    ["<A-t>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "Toggle horizontal term",
    },

    ["<A-v>"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
      "Toggle vertical term",
    },

    -- new
    ["<leader>t"] = {
      function()
        require("nvterm.terminal").new "horizontal"
      end,
      "New horizontal term",
    },

    ["<leader>v"] = {
      function()
        require("nvterm.terminal").new "vertical"
      end,
      "New vertical term",
    },
  },
}



return M
