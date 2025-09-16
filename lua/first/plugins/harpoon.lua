return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local harpoon = require("harpoon")

      -- REQUIRED
      harpoon:setup()

      -- Add files to Harpoon
      vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
      
      -- Toggle quick menu
      vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

      -- Navigate between files
      vim.keymap.set("n", "<C-q>", function() harpoon:list():select(1) end)
      vim.keymap.set("n", "<C-h>", function() harpoon:list():select(2) end)
      vim.keymap.set("n", "<C-k>", function() harpoon:list():select(3) end)
      vim.keymap.set("n", "<C-l>", function() harpoon:list():select(4) end)

      -- Previous & next
      vim.keymap.set("n", "<C-S-A>", function() harpoon:list():prev() end)
      vim.keymap.set("n", "<C-S-L>", function() harpoon:list():next() end)
    end,
  }
}
