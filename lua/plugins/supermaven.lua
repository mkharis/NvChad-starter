return {
  "saghen/blink.cmp",
  dependencies = {
    "saghen/blink.compat",
    {
      "supermaven-inc/supermaven-nvim",
      opts = {
        keymaps = {
          accept_suggestion = "<C-g>",
        },
      },
    },
  },
  opts = {
    sources = {
      default = { "lsp", "path", "snippets", "buffer", "supermaven" },
      providers = {
        supermaven = { name = "supermaven", module = "blink.compat.source", async = true },
      },
    },
  },
}
