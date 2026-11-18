return {
  "saghen/blink.cmp",
  optional = true,
  dependencies = {
    "saghen/blink.compat",
    {
      "supermaven-inc/supermaven-nvim",
      opts = {
        disable_inline_completion = true,
        disable_keymaps = true,
      },
    },
  },
  opts = {
    sources = {
      default = { "supermaven" },
      providers = {
        supermaven = {
          name = "supermaven",
          module = "blink.compat.source",
          async = true,
          score_offset = 0,
        },
      },
    },
  },
}
