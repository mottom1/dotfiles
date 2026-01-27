local on_attach = function(client, bufnr)
  -- NOTE: You may need to define this function elsewhere (e.g., in lua/config/lsp.lua)
  -- and require it here to keep this file clean. For now, we'll keep it simple.
  -- Common keymaps for all LSPs
  local opts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
  vim.keymap.set('n', '<leader>fe', vim.lsp.diagnostic.open_float, opts)

  -- Add other common keymaps here...
end


return {
  {
    "mason-org/mason.nvim",
    opts = {}
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = {"clangd", "lua_ls","rust_analyzer","hyprls"},
        handlers = {
          -- This is the default handler for most servers:
          function(server_name)
            -- 1. Define the config using the new API
            print("Attempting to configure LSP:", server_name)
            require("lspconfig")[server_name].setup({
          -- vim.lsp.config(server_name, {
              on_attach = on_attach,
            })
            -- vim.lsp.enable(server_name)
          end,
        },
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    }
  }
 }

