local add, now = MiniDeps.add, MiniDeps.now

now(function()
  add({ source = "nvim-lua/plenary.nvim" })
  add({ source = "nvim-tree/nvim-web-devicons" })
  add({ source = "neovim/nvim-lspconfig" })
  add({ source = "vim-denops/denops.vim" })
  add({
    source = "nvim-treesitter/nvim-treesitter",
    checkout = "main",
    monitor = "main",
    hooks = {
      post_checkout = function()
        vim.cmd("TSUpdate")
      end,
    },
  })
  add({ source = "folke/snacks.nvim" })
  require("snacks").setup({})
end)
