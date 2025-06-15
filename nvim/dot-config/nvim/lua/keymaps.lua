-- Sourcing lua config files
vim.keymap.set("n", "<leader><leader>x", "<cmd>source %<CR>", { desc = "Custom: Source File" })
vim.keymap.set("n", "<leader>x", ":.lua<CR>", { desc = "Custom: Lua Run Current Line" })
vim.keymap.set("v", "<leader>x", ":lua<CR>", { desc = "Custom: Lua Run Selection" })

-- Saving file
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Custom: Save Buffer" })
vim.keymap.set("n", "<C-s>", ":w<CR>", { desc = "Custom: Save Buffer" })

-- File explorer
vim.keymap.set("n", "<leader>e", ":Explore<CR>" , { desc = "Custom: Netrw" })

-- Better window management
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Custom: Left Window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Custom: Lower Window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Custom: Upper Window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Custom: Right Window" })
vim.keymap.set("n", "<leader>w-", "<C-W>s", { desc = "Custom: Split Window Below" })
vim.keymap.set("n", "<leader>w|", "<C-W>v", { desc = "Custom: Split Window Right" })
vim.keymap.set("n", "<leader>bd", "<cmd>q<cr>", { desc = "Custom: Close Buffer" })

-- Better indenting and line management
vim.keymap.set("v", "<", "<gv", { desc = "Custom: Remove Indention" })
vim.keymap.set("v", ">", ">gv", { desc = "Custom: Add Indention" })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Custom: Move Line Up" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Custom: Move Line Down" })

-- Clear highlighting for search
vim.keymap.set({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Custom: Clear Highlight Search" })

-- Keep cursor in same spot for half page jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Custom: Sane Jump Down Half Page" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Custom: Sane Jump Up Half Page" })

-- Void deleting and pasting
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Custom: Void Paste" })
vim.keymap.set("v", "<leader>d", [["_d]], { desc = "Custom: Void Delete" })
