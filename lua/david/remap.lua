vim.g.mapleader = ","
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "<leader><leader>", "<C-^>", { desc = "Toggle to previous buffer" })
vim.keymap.set("n", "<leader>ts", ":split | terminal<CR>", { desc = "Opens terminal in a new split window"}) 
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { noremap = true }, { desc = "Escape termianl back to normal mode"})
vim.keymap.set("n", "<leader>nu", ":set number!<CR>", {desc = "Toggle absolute line numbers"})
vim.keymap.set("n", "<leader>rnu", ":set relativenumber!<CR>", {desc= "Toggle relative line numbers"})
