local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    svelte = { "prettier" },
    vue = { "prettier" },
    json = { "prettier" },
    markdown = { "prettier" },
    yaml = { "prettier" },
    python = { "isort", "black" },
    php = { "pint" },
    blade = { "blade-formatter" },
    sql = { "sql_formatter" },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

return options
