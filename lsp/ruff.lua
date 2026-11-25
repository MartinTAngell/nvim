   return {
     cmd = { "ruff", "server" },
     filetypes = { "python" },
     root_markers = { "pyproject.toml", "ruff.toml", ".ruff.toml", ".git" },
     on_attach = function(client)
       -- let basedpyright handle hover; ruff's is minimal
       client.server_capabilities.hoverProvider = false
     end,
   }
