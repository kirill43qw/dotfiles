-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set({ "n", "v" }, ";", ":", { desc = "Enter command mode" })

-- insert mode
vim.keymap.set("i", "jj", "<Esc>", { desc = "Escape" })
vim.keymap.set("i", "<C-h>", "<Left>", { desc = "Move Left" })
-- vim.keymap.set("i", "<C-j>", "<Down>", { desc = "Move Down" })
-- vim.keymap.set("i", "<C-k>", "<Up>", { desc = "Move Up" })
vim.keymap.set("i", "<C-l>", "<Right>", { desc = "Move Right" })

-- vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down and center" })
-- vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up and center" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result (centered)" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Prev search result (centered)" })
vim.keymap.set("n", "x", '"_x', { desc = "Delete character into void register" })

-- Глобальная замена слова под курсором
-- vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Replace word under cursor" })

-- Вставка поверх выделенного текста без потери того, что было скопировано
vim.keymap.set("x", "p", [["_dP]], { desc = "Paste over without losing yanked text" })

-- Удаление без сохранения в буфер обмена
-- vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete into void register" })
