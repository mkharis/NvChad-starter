require("nvchad.configs.lspconfig").defaults()

local vue_language_server_path = vim.fn.stdpath "data"
  .. "/mason/packages/vue-language-server/node_modules/@vue/language-server"

vim.lsp.config("vtsls", {
  settings = {
    vtsls = {
      tsserver = {
        globalPlugins = {
          {
            name = "@vue/typescript-plugin",
            location = vue_language_server_path,
            languages = { "vue" },
            configNamespace = "typescript",
          },
        },
      },
    },
  },
  filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
})

local servers = { "html", "cssls", "eslint", "svelte", "vue_ls", "vtsls", "pyright", "intelephense" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
