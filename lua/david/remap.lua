vim.g.mapleader = ","
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "<leader><leader>", "<C-^>", { desc = "Toggle to previous buffer" })
vim.keymap.set("n", "<leader>nu", ":set number!<CR>", {desc = "Toggle absolute line numbers"})
vim.keymap.set("n", "<leader>rnu", ":set relativenumber!<CR>", {desc= "Toggle relative line numbers"})
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- enter visual mode and you can move multiple lines at once basically
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


-- appends line below to end of current line
vim.keymap.set("n", "J", "mzJ`z")

-- keeps cursor in middle during page jumps
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- centers screen when jumping between words during find
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- custom paste to keep the selected test in clipboard
vim.keymap.set("x", "<leader>p", [["_dP]])

-- prevents accidently entering Q mode?
vim.keymap.set("n", "Q", "<nop>")

-- opens up my tmux sessionizer!!! very cool
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww ~/.local/bin/tmux-sessionizer<CR>")

-- move between items (mostly used for greps)
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

-- move between items in location (mostly used for lsp errors?)
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- search all occurences of the current word and replace (asking for confirmation for each)
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gcI<Left><Left><Left><Left>]])

-- open terminal in split screen
vim.keymap.set("n", "<leader>tv", ":vsp | terminal<CR>")
vim.keymap.set("n", "<leader>th", ":sp | terminal<CR>")
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { noremap = true }, { desc = "Escape terminal back to normal mode"})
