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
    opts = function(_, conf)
      require "configs.blade"

      conf.auto_install = true

      local ensure_installed = {
        "html",
        "css",
        "javascript",
        "typescript",
        "svelte",
        "vue",
        "python",
        "php",
        "blade",
      }

      vim.list_extend(conf.ensure_installed, ensure_installed)

      return conf
    end,
  },
}
