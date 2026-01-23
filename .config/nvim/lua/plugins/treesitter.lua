return {
  "nvim-treesitter/nvim-treesitter",
  build= ":TSUpdate",
  lazy = false,
  config = function()
    local tree_config = require("nvim-treesitter.configs")
      tree_config.setup({
      ensure_installed = {"lua", "c", "python", "rust", "markdown"},
      highlight = { enable = true },
      indent = { enable = true }
    })
  end

}
