local add = MiniDeps.add
local c = require("libs.config")

do
  add({
    source = "oclay1st/gradle.nvim",
    depends = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    }
  })
  require("gradle").setup {}

  add({
    source = "3rd/image.nvim",
    depends = {
      "nvim-treesitter/nvim-treesitter",
      "leafo/magick"
    }
  })
  c.load_conf("images")
end
