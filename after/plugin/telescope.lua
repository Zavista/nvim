local builtin = require('telescope.builtin')

-- Find files (project-wide)
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = '[F]ind [F]iles' })

-- Find Git files (Git-tracked only)
vim.keymap.set('n', '<leader>fg', builtin.git_files, { desc = '[F]ind [G]it files' })

-- Grep live string (live text search)
vim.keymap.set('n', '<leader>fs', builtin.live_grep, { desc = '[F]ind [S]tring' })

-- Optional: Search for a word under cursor
vim.keymap.set('n', '<leader>fw', builtin.grep_string, { desc = '[F]ind [W]ord under cursor' })

