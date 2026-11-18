return {
  {
    "adalessa/laravel.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-neotest/nvim-nio",
      "nvim-telescope/telescope.nvim",
      "saghen/blink.compat",
    },
    ft = { "php", "blade" },
    event = { "BufEnter composer.json" },
    opts = {
      features = {
        pickers = { provider = "telescope" },
      },
    },
    keys = {
      {
        "<leader>ll",
        function()
          Laravel.pickers.laravel()
        end,
        desc = "Laravel: Picker",
      },
      {
        "<leader>la",
        function()
          Laravel.pickers.artisan()
        end,
        desc = "Laravel: Artisan",
      },
      {
        "<leader>lr",
        function()
          Laravel.pickers.routes()
        end,
        desc = "Laravel: Routes",
      },
      {
        "<leader>lm",
        function()
          Laravel.pickers.make()
        end,
        desc = "Laravel: Make",
      },
      {
        "<leader>lc",
        function()
          Laravel.pickers.commands()
        end,
        desc = "Laravel: Commands",
      },
      {
        "<leader>lo",
        function()
          Laravel.pickers.resources()
        end,
        desc = "Laravel: Resources",
      },
      {
        "<leader>lh",
        function()
          Laravel.run "artisan docs"
        end,
        desc = "Laravel: Documentation",
      },
      {
        "<leader>lt",
        function()
          Laravel.commands.run "actions"
        end,
        desc = "Laravel: Actions",
      },
      {
        "<leader>lu",
        function()
          Laravel.commands.run "hub"
        end,
        desc = "Laravel: Artisan Hub",
      },
      {
        "<leader>lp",
        function()
          Laravel.commands.run "command_center"
        end,
        desc = "Laravel: Command Center",
      },
      {
        "<c-g>",
        function()
          Laravel.commands.run "view:finder"
        end,
        desc = "Laravel: View Finder",
      },
      {
        "gf",
        function()
          if Laravel.app("gf").cursorOnResource() then
            return "<cmd>lua Laravel.commands.run('gf')<cr>"
          end
          return "gf"
        end,
        expr = true,
        noremap = true,
        desc = "Laravel: Go to resource",
      },
    },
  },
  {
    "saghen/blink.cmp",
    optional = true,
    opts = {
      sources = {
        default = { "laravel" },
        providers = {
          laravel = {
            name = "laravel",
            module = "blink.compat.source",
            async = true,
            score_offset = 95,
          },
        },
      },
    },
  },
}
