require("telescope").setup()

local builtin = require "telescope.builtin"
vim.keymap.set('n', '<leader>of', builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
