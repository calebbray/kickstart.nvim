local keymap = vim.keymap.set
local opts = { silent = true }

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

keymap('n', '<leader>pv', vim.cmd.Ex, opts)
keymap('i', 'jk', '<ESC>', opts)
keymap('n', '<C-f>', ':! tmux neww tmux-sessionizer<CR>', opts)

-- capital U to redo undone
keymap('n', '<S-u>', '<C-r>', opts)
-- Better Window Navigation
keymap('n', '<C-h>', '<C+w>h', opts)
keymap('n', '<C-j>', '<C+w>j', opts)
keymap('n', '<C-k>', '<C+w>k', opts)
keymap('n', '<C-l>', '<C+w>l', opts)

-- Resize With Arrows
keymap('n', '<S-Up>', ':resize -2<CR>', opts)
keymap('n', '<S-Down>', ':resize +2<CR>', opts)
keymap('n', '<S-Left>', ':vertical resize -2<CR>', opts)
keymap('n', '<S-Right>', ':vertical resize +2<CR>', opts)

-- Navigate Buffers
keymap('n', '<S-l>', ':bnext<CR>', opts)
keymap('n', '<S-h>', ':bprevious<CR>', opts)
keymap('n', '<A-w>', ':bdelete<CR>', opts)

-- Stay in indent mode
keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)

-- Move text up and down -- NOT WORKING RIGHT NOW
keymap('v', 'J', ":m '>+1<CR>gv=gv")
keymap('v', 'K', ":m '<-2<CR>gv=gv")

-- Better paste
keymap('v', 'p', '"_dP', opts)

-- Clear highlights
keymap('n', '<ESC>', '<cmd>nohlsearch<CR>', opts)

-- Diagnostic keymaps
keymap('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
keymap('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
keymap('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
keymap('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
