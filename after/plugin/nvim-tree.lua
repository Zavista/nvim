---@type nvim_tree.config
require("nvim-tree").setup({
    view = {
        width = 30,
    },
    renderer = {
        group_empty = true,
        icons = {
            show = {
                file = true,
                folder = true,
                folder_arrow = true,
                git = true,
            },
        },
    },
    filters = {
        dotfiles = false,
    },
})
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>")
