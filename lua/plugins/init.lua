return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- test new blink
  { import = "nvchad.blink.lazyspec" },

  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").install {
        "vim",
        "lua",
        "vimdoc",
        "bash",
        "csv",
        "json",
        "markdown",
        "yaml",
        "toml",
        "html",
        "css",
        "javascript",
        "typescript",
        "svelte",
        "vue",
        "python",
        "php",
        "blade",
        "sql",
        "dockerfile",
      }
    end,
  },
}
