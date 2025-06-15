return {
  "christoomey/vim-tmux-navigator",
  init = function()
    -- stylua: start ignore
    vim.keymap.set({ "i", "n", "v" }, "<C-h>", "<cmd>TmuxNavigateLeft<cr><esc>", { desc = "TMUX: Move to left pane" })
    vim.keymap.set({ "i", "n", "v" }, "<C-l>", "<cmd>TmuxNavigateRight<cr><esc>", { desc = "TMUX: Move to right pane" })
    vim.keymap.set({ "i", "n", "v" }, "<C-j>", "<cmd>TmuxNavigateDown<cr><esc>", { desc = "TMUX: Move to down pane" })
    vim.keymap.set({ "i", "n", "v" }, "<C-k>", "<cmd>TmuxNavigateUp<cr><esc>", { desc = "TMUX: Move to up pane" })
    vim.keymap.set({ "i", "n", "v" }, "<C-\\>", "<cmd>TmuxNavigatePrevious<cr><esc>", { desc = "TMUX: Move to previous pane" })
    -- stylua: end ignore
  end,
}
