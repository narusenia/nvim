local add = MiniDeps.add

do
  add({ source = "kdheepakg/lazygit.nvim" })
  add({ source = "sindrets/diffview.nvim" })
  add({ source = "yannvanhalewyn/jujutsu.nvim" })
  do
    require("jujutsu-nvim").setup {
      diff_preset = "diffview"
    }
  end
end
