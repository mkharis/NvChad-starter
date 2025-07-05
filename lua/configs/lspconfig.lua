require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "eslint", "svelte", "volar", "pyright", "intelephense" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
