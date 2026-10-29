local add = MiniDeps.add
local c = require("libs.config")

do
  add({ source = "stevearc/oil.nvim" })
  require("oil").setup({
    default_file_explorer = true,
    view_options = {
      show_hidden = true,
    }
  })
  add({
    source = "nvim-neo-tree/neo-tree.nvim",
    checkout = "v3.x",
    depends = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
    },
  })
  c.load_conf("neo-tree")
end
