local add = MiniDeps.add
local c = require("libs.config")

do
  add({
    source = "zbirenbaum/copilot.lua",
  })
  require("copilot").setup({})

  add({
    source = "L3MON4D3/LuaSnip",
  })
  require("luasnip").setup({})
  require("luasnip.loaders.from_snipmate").lazy_load()
  require("luasnip.loaders.from_lua").lazy_load()

  add({
    source = "fang2hou/blink-copilot",
  })
  add({
    source = "saghen/blink.cmp",
    checkout = "v1.6.0",
    depends = {
      "L3MON4D3/LuaSnip",
    },
  })
  c.load_conf("blink")
end
