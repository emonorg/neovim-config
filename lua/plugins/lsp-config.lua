return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tsserver = {
          settings = {
            typescript = {
              suggest = {
                autoImports = true, -- Enable auto imports
              },
            },
            javascript = {
              suggest = {
                autoImports = true, -- Enable auto imports
              },
            },
          },
        },
      },
    },
  },
}
