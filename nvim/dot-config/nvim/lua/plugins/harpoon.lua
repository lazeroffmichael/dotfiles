return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")
    -- required call
    harpoon:setup()

    -- TODO: Finish comments
    vim.keymap.set("n", "<leader>hg", function() harpoon:list():add() end, { desc = "Harpoon: Grab" })
    vim.keymap.set("n", "<leader>h", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

    vim.keymap.set("n", "<leader>ha", function() harpoon:list():select(1) end)
    vim.keymap.set("n", "<leader>hs", function() harpoon:list():select(2) end)
    vim.keymap.set("n", "<leader>hd", function() harpoon:list():select(3) end)
    vim.keymap.set("n", "<leader>hf", function() harpoon:list():select(4) end)

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set("n", "<leader>he", function() harpoon:list():prev() end)
    vim.keymap.set("n", "<leader>hr", function() harpoon:list():next() end)
  end
}
