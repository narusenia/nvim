local add, later = MiniDeps.add, MiniDeps.later
local c = require("libs.config")

do
  add({ source = "aznhe21/actions-preview.nvim" })

  later(function()
    add({ source = "saecki/crates.nvim" })
    require("crates").setup {}
  end)

  later(function()
    add({ source = "lewis6991/hover.nvim" })
    c.load_conf("hover")
  end)

  do
    add({ source = "lambdalisue/kensaku.vim" })
    add({ source = "lambdalisue/kensaku-search.vim" })
    add({ source = "lambdalisue/kensaku-command.vim" })
    vim.api.nvim_set_keymap(
      'c',
      '<CR>',
      '<Plug>(kensaku-search-replace)<CR>',
      { noremap = true, silent = true }
    )

    add({ source = "folke/flash.nvim" })
    c.load_conf("flash")
  end

  add({ source = "monaqa/dial.nvim" })

  add({ source = "johmsalas/text-case.nvim" })
  require("textcase").setup {}

  add({ source = "andersevenrud/nvim_context_vt" })
  require("nvim_context_vt").setup {
    prefix = "»",
  }

  add({ source = "uga-rosa/ccc.nvim" })
  c.load_conf("ccc")

  add({ source = "jghauser/mkdir.nvim" })
  add({ source = "nacro90/numb.nvim" })
  add({ source = "JoosepAlviste/nvim-ts-context-commentstring" })
  add({ source = "windwp/nvim-ts-autotag" })
  add({ source = "unblevable/quick-scope" })
  add({ source = "m-demare/hlargs.nvim" })
  add({
    source = "SmiteshP/nvim-navic",
    depends = { "neovim/nvim-lspconfig" },
  })
  add({ source = "folke/trouble.nvim" })
  require("trouble").setup {}
end
