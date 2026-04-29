vim.g.undotree_WindowLayout = 2
vim.g.undotree_SetFocusWhenToggle = 1
vim.g.undotree_SplitWidth = 30
vim.opt.undofile = true



vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
