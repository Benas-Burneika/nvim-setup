local builtin = require('telescope.builtin')
local keymap = vim.keymap.set

keymap('n', '<leader>pf', builtin.find_files, {})
keymap('n', '<leader>pg', builtin.live_grep, {})
keymap('n', '<C-p>', builtin.git_files, {})
keymap('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

