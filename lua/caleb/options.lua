vim.opt.backup = false
vim.opt.number = true
vim.opt.rnu = true

vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.opt.clipboard = 'unnamedplus'
-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.opt.ignorecase = true
vim.opt.smartcase = true
-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'
-- Decrease update time
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true
-- Sets how neovim will display certain whitespace in the editor.
--  See :help 'list'
--  and :help 'listchars'
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true
vim.opt.cursorlineopt = 'line'

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10
vim.opt.hlsearch = true

-- These are from my original config
vim.opt.completeopt = { 'menuone', 'noselect' } -- mostly just for cmp
vim.opt.conceallevel = 0 -- so that `` is visible in markdown files
vim.opt.fileencoding = 'utf-8' -- the encoding written to a file
vim.opt.swapfile = false -- creates a swapfile
vim.opt.termguicolors = true -- set term gui colors (most terminals support this)
vim.opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.opt.expandtab = true -- convert tabs to spaces
vim.opt.shiftwidth = 2 -- the number of spaces inserted for each indentation
vim.opt.tabstop = 2 -- insert 2 spaces for a tab
vim.opt.laststatus = 3 -- only the last window will always have a status line
vim.opt.showcmd = false -- hide (partial) command in the last line of the screen (for performance)
vim.opt.ruler = false -- hide the line and column number of the cursor position
vim.opt.numberwidth = 4 -- minimal number of columns to use for the line number {default 4}
vim.opt.wrap = true -- display lines as one long line
vim.opt.guifont = 'monospace:h17' -- the font used in graphical neovim applications
vim.opt.fillchars.eob = ' ' -- show empty lines at the end of a buffer as ` ` {default `~`}
vim.opt.shortmess:append 'c' -- hide all the completion messages, e.g. "-- XXX completion (YYY)", "match 1 of 2", "The only match", "Pattern not found"
vim.opt.whichwrap:append '<,>,[,],h,l' -- keys allowed to move to the previous/next line when the beginning/end of line is reached
vim.opt.iskeyword:append '-' -- treats words with `-` as single words
vim.opt.formatoptions:remove { 'c', 'r', 'o' } -- This is a sequence of letters which describes how automatic formatting is to be done
vim.opt.linebreak = true
vim.opt.colorcolumn = '100'
