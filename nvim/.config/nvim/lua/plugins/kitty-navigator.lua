return {
  {
    "knubie/vim-kitty-navigator",
    init = function()
      vim.g.kitty_navigator_no_mappings = 1
    end,
    keys = {
      { "<C-h>", "<cmd>KittyNavigateLeft<cr>", mode = { "n", "v" }, desc = "KittyNavigateLeft" },
      { "<C-j>", "<cmd>KittyNavigateDown<cr>", mode = { "n", "v" }, desc = "KittyNavigateDown" },
      { "<C-k>", "<cmd>KittyNavigateUp<cr>", mode = { "n", "v" }, desc = "KittyNavigateUp" },
      { "<C-l>", "<cmd>KittyNavigateRight<cr>", mode = { "n", "v" }, desc = "KittyNavigateRight" },
    },
  },
}
