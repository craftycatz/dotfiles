local opts = {noremap = true, silent = true}

local keymap = vim.keymap

-- Open Telescope
keymap.set('n', 'tt', ':Telescope file_browser<Return>')

-- Quit without writing to buffer
keymap.set('n', 'qq', ':q!<Return>', opts)

-- Write Quit
keymap.set('n', 'qw', ':wq<Return>', opts)

-- Write
keymap.set('n', 'ww', ':w!', opts)

-- Save and return to insert mode
keymap.set('i', '<C-s>', '<ESC>:w<Return>i', opts)

-- Split Window
keymap.set('n', 'ss', ':split<Return><C-w>w', opts)
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', opts)

-- New Tab
keymap.set('n', 'te', ':tabedit<Return>', opts)

-- Navigate Between Windows
keymap.set('n', '<Space>', '<C-w>w', opts)
keymap.set('', '<C-h>', '<C-w>h', opts)
keymap.set('', '<C-k>', '<C-w>k', opts)
keymap.set('', '<C-j>', '<C-w>j', opts)
keymap.set('', '<C-l>', '<C-w>l', opts)

-- Resize window
keymap.set('n', '<M-left>', '<C-w><', opts)
keymap.set('n', '<M-right>', '<C-w>>', opts)
keymap.set('n', '<M-up>', '<C-w>+', opts)
keymap.set('n', '<M-down>', '<C-w>-', opts)