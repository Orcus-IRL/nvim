require("vim-options")
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins", {
    checker = {
        enabled = true,  -- update checker, optional
    },
    change_detection = {
        enabled = false,  -- <-- disable auto reload
        notify = false,   -- optional, also disables notifications
    },
})
