local add, later = MiniDeps.add, MiniDeps.later
local c = require("libs.config")

do
  add({ source = "stevearc/aerial.nvim" })
  require("aerial").setup {}

  add({
    source = "nvim-telescope/telescope.nvim",
    depends = {
      "nvim-lua/plenary.nvim",
    },
  })
  add({
    source = "danielfalk/smart-open.nvim",
    depends = {
      "kkharji/sqlite.lua",
      "nvim-telescope/telescope-fzy-native.nvim",
    },
  })
  c.load_conf("telescope")
  later(function()
    add({ source = "dnlhc/glance.nvim" })
    c.load_conf("glance")
  end)
end
