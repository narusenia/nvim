local add, later = MiniDeps.add, MiniDeps.later
local c = require("libs.config")

do
  add({
    source = "nvim-lualine/lualine.nvim",
    depends = { "nvim-tree/nvim-web-devicons" },
  })
  c.load_conf("lualine")

  add({ source = "akinsho/toggleterm.nvim" })
  c.load_conf("toggleterm")

  later(function()
    add({ source = "stevearc/conform.nvim" })
    c.load_conf("conform")
  end)

  add({ source = "kevinhwang91/nvim-ufo", depends = { "kevinhwang91/promise-async", "neovim/nvim-lspconfig" } })
  c.load_conf("ufo")
  add({ source = "luukvbaal/statuscol.nvim" })
  c.load_conf("statuscol")

  add({ source = "kazhala/close-buffers.nvim" })

  later(function()
    add({
      source = "wasabeef/bufferin.nvim",
      depends = {
        "nvim-tree/nvim-web-devicons",
      },
    })
    c.load_conf("bufferin")
  end)

  add({
    source = "delphinus/md-render.nvim",
    depends = {
      "nvim-tree/nvim-web-devicons", -- optional
      "delphinus/budoux.lua",        -- optional
    },
  })
  add({ source = "sitiom/nvim-numbertoggle" })

  do
    add({ source = "b0o/incline.nvim" })
    add({ source = "shellRaining/hlchunk.nvim" })
    c.load_conf("incline")
    c.load_conf("hlchunk")
  end

  do
    add({ source = "jake-stewart/multicursor.nvim" })
    c.load_conf("multicursor")
  end

  do
    add({ source = "folke/which-key.nvim" })
  end

  do
    add({
      source = "ghillb/cybu.nvim",
      checkout = "main",
      monitor = "main",
      depends = {
        "nvim-tree/nvim-web-devicons", "nvim-lua/plenary.nvim"
      }
    })
    require("cybu").setup {}
  end

  do
    add({ source = "j-hui/fidget.nvim" })
    require("fidget").setup {}
  end

  add({
    source = 'brianhuster/live-preview.nvim',
    depends = {
      -- You can choose one of the following pickers
      'nvim-telescope/telescope.nvim',
      'ibhagwan/fzf-lua',
      'echasnovski/mini.pick',
      'folke/snacks.nvim',
    },
  })
end
