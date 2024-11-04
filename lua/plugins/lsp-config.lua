return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tsserver = {
          on_attach = function(client, bufnr)
            -- Define the organize imports function
            local function organize_imports()
              local params = {
                command = "_typescript.organizeImports",
                arguments = { vim.api.nvim_buf_get_name(0) },
                title = "",
              }
              vim.lsp.buf.execute_command(params)
            end

            -- Create a custom command to organize imports
            vim.api.nvim_buf_create_user_command(
              bufnr,
              "OrganizeImports",
              organize_imports,
              { desc = "Organize Imports" }
            )

            -- Auto-organize imports on save
            vim.api.nvim_create_autocmd("BufWritePre", {
              buffer = bufnr,
              callback = organize_imports,
            })
          end,
          settings = {
            typescript = {
              suggest = {
                autoImports = true,
              },
            },
            javascript = {
              suggest = {
                autoImports = true,
              },
            },
          },
        },
      },
    },
  },
}
