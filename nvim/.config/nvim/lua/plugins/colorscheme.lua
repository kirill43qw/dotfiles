-- https://vimcolorschemes.com/i/trending/b.dark
return {
  { "rebelot/kanagawa.nvim", lazy = true },
  { "rose-pine/neovim", name = "rose-pine", lazy = true },
  { "EdenEast/nightfox.nvim", lazy = true }, -- dayfox, dawnfox, duskfox, nordfox, terafox, carbonfox
  { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = true },
  { "projekt0n/github-nvim-theme", name = "github", lazy = true },
  { "ramojus/mellifluous.nvim", lazy = true },
  { "arcticicestudio/nord-vim", lazy = true },
  { "mhartington/oceanic-next", lazy = true },
  { "tiagovla/tokyodark.nvim", lazy = true },
  { "AlexvZyl/nordic.nvim", lazy = true },
  { "marko-cerovac/material.nvim", lazy = true },
  { "Mofiqul/dracula.nvim", lazy = true },
  {
    "sainnhe/sonokai",
    lazy = true,
    config = function()
      vim.g.sonokai_style = "shusia" -- default, andromeda, atlantis, shusia, maia, espresso
    end,
  },
  {
    "sainnhe/everforest",
    lazy = true,
    config = function()
      vim.g.everforest_background = "medium" -- hard, medium, soft
      vim.g.everforest_enable_italic = true
    end,
  },
  {
    "uloco/bluloco.nvim",
    lazy = true,
    dependencies = { "rktjmp/lush.nvim" },
  },
  { "vague-theme/vague.nvim", lazy = true },
  { "ribru17/bamboo.nvim", lazy = true },
  { "webhooked/kanso.nvim", lazy = true },
  { "kamwitsta/vinyl.nvim", lazy = true },
  { "NLKNguyen/papercolor-theme", lazy = true },
  { "jacoborus/tender.vim", lazy = true },
  { "nanotech/jellybeans.vim", lazy = true },

  {
    "LazyVim/LazyVim",
    lazy = true,
    opts = {
      -- colorscheme = "kanso-mist",
      colorscheme = "nordfox",
      -- colorscheme = "kanagawa-dragon",
    },
  },
}
