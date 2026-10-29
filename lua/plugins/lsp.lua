local add, now = MiniDeps.add, MiniDeps.now
local c = require("libs.config")

now(function()
  add({ source = "mason-org/mason.nvim" })
  add({ source = "mason-org/mason-lspconfig.nvim" })
  c.load_conf("lsp")
  add({ source = "onsails/lspkind.nvim" })
  c.load_conf("lspkind")

  add({ source = "rachartier/tiny-code-action.nvim" })
  c.load_conf("tiny-code-action")

  do
    add({
      source = "MysticalDevil/inlay-hints.nvim",
      depends = { "neovim/nvim-lspconfig" }
    })
    require("inlay-hints").setup()
  end

  add({ source = "mrcjkb/rustaceanvim" })
  add({ source = "NaruseNia/valen.nvim" })
  -- minewell: filetype・tree-sitter ハイライト・mwl lsp の診断。
  -- parser は初回に自分でビルドするので、ビルドフックは要らない
  add({ source = "narusenia/minewell-nvim" })
  add({
    source = "nvim-treesitter/nvim-treesitter-context",
    depends = { "nvim-treesitter/nvim-treesitter" }
  })

  do
    add({ source = "Canop/nvim-bacon" })
    require("bacon").setup {
      quickfix = {
        enabled = true,
        event_trigger = true,
      },
    }
  end
end)
