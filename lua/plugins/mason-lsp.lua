return {
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" }, -- required dependency
    config = function()
      require("mason").setup()  -- make sure Mason itself is setup
      require("mason-lspconfig").setup({
        ensure_installed = { "pyright", "clangd", "jdtls", "lua_ls", "gopls" },
      })
    end
  },
}
