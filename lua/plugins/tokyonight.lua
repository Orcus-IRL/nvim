return {
  "folke/tokyonight.nvim",
  lazy = false,          -- IMPORTANT: load immediately
  priority = 1000,       -- Load before all other UI plugins
  config = function()
    require("tokyonight").setup({
      style = "moon",   -- storm | night | moon | day
      transparent = false,
      terminal_colors = true,
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
      },
    })

    vim.cmd.colorscheme("tokyonight")
  end,
}
