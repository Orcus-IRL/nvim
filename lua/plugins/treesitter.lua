return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    build = ":TSUpdate",
    lazy = false,
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "lua", "python", "c", "vim", "vimdoc" ,"bash",},
        highlight = { enable = true },
        options = {
          theme = "tokyonight-moon",
        },
      })
    end
  }
}
