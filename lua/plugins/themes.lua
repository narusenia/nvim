local add = MiniDeps.add

local themes = {
  { "vague2k/vague.nvim" },
  { "dgox16/oldworld.nvim" },
  { "nyoom-engineering/oxocarbon.nvim" },
  { "rebelot/kanagawa.nvim" },
  { "metalelf0/jellybeans-nvim" },
  { "ellisonleao/gruvbox.nvim" },
  { "bluz71/vim-moonfly-colors" },
  { "zenbones-theme/zenbones.nvim" },
  { "everviolet/nvim" },
  { "olivercederborg/poimandres.nvim" },
  { "Everblush/nvim" },
  { "oskarnurm/koda.nvim" },
  { "datsfilipe/vesper.nvim" },
  { "yorumicolors/yorumi.nvim" },
  { "vague2k/huez.nvim" },
  { "ThorstenRhau/token" },
  { "AhmedAbdulrahman/vim-aylin" },
  { "kartikp10/noctis.nvim" },
  { "phha/zenburn.nvim" },
  { "catppuccin/nvim" },
  { "rose-pine/neovim" },
  { "ribru17/bamboo.nvim" },
  { "mellow-theme/mellow.nvim" },
  { "frenzyexists/aquarium-vim" },
  { "kvrohit/rasmus.nvim" },
  { "ilof2/posterpole.nvim" },
  { "ficcdaf/ashen.nvim" },
  { "Everblush/everblush.vim" },
  { "Mofiqul/vscode.nvim" },
  { "kvrohit/substrata.nvim" },
  { "felipeagc/fleet-theme-nvim" },
  "aizen"
}

do
  add({
    source = "lmantw/themify.nvim",
    depends = {
      "rktjmp/lush.nvim"
    }
  })
  require("themify").setup(themes)
end
