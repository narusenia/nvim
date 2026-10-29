local add, now, later = MiniDeps.add, MiniDeps.now, MiniDeps.later

now(function()
  require("mini.notify").setup {
    lsp_progress = {
      enable = false,
    }
  }
  vim.notify = require("mini.notify").make_notify()
end)
now(function()
  require("mini.icons").setup()
  require("mini.tabline").setup()
  -- require("mini.statusline").setup()
end)

later(function()
  require("mini.ai").setup()
  require("mini.comment").setup()
  require("mini.pairs").setup()
end)
