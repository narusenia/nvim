local add = MiniDeps.add

do
  add({
    source = "coder/claudecode.nvim",
    depends = {
      "folke/snacks.nvim",
    },
  })
  require("claudecode").setup {}
end
