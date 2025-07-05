require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map({ "n", "v" }, "<leader>fp", function()
  local conform = require "conform"
  conform.format {
    lsp_fallback = true,
    timeout_ms = 1000,
  }
end, { desc = "format file or range (in visual mode)" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
