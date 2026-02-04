return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build= ":TSUpdate",
  require'nvim-treesitter'.setup {
    ensure_installed = {"lua", "c", "python", "rust", "markdown","cpp"},
    highlight = { enable = true },
    indent = { enable = true }
  }
  -- config = function()
  --   local tree_config = require("nvim-treesitter.configs")
  --     tree_config.setup({
  --     ensure_installed = {"lua", "c", "python", "rust", "markdown","cpp"},
  --     highlight = { enable = true },
  --     indent = { enable = true }
  --   })
  -- end

}
