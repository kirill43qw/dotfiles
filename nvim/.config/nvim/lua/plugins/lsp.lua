return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ruff = {
          cmd_env = { RUFF_TRACE = "messages" },
          init_options = {
            settings = {
              logLevel = "error",
            },
          },
          on_attach = function(client)
            if client.name == "ruff" then
              client.server_capabilities.hoverProvider = false
            end
          end,
        },
        basedpyright = {
          enabled = true,
          settings = {
            basedpyright = {
              analysis = {
                typeCheckingMode = "standard", -- "recommended" или "strict" для жесткой типизации
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
                diagnosticMode = "openFilesOnly",
              },
            },
          },
        },
        pyright = { enabled = false },
      },
    },
  },
}
