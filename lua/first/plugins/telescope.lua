return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim", "debugloop/telescope-undo.nvim", "nvim-telescope/telescope-ui-select.nvim" },
    keys = {
      { "<leader>pf", function() require("telescope.builtin").find_files() end, desc = "Find files" },
      { "<C-p>", function() require("telescope.builtin").git_files() end, desc = "Git files" },
      { "<leader>ps", function() require("telescope.builtin").grep_string({ search = vim.fn.input("Grep > ") }) end, desc = "Grep string" },
      { "<leader>u", "<cmd>Telescope undo<cr>", desc = "Undo history" },
    },
    config = function()
      local telescope = require("telescope")
      telescope.setup({})
      telescope.load_extension("undo")
      telescope.load_extension("ui-select")

      -- Now we can safely require undo actions
      local undo_actions = require("telescope-undo.actions")

      telescope.setup {
        extensions = {
	  ["ui-select"] = {
	    require("telescope.themes").get_dropdown {

	    }
	  },
          undo = {
            mappings = {
              i = {
                ["<cr>"]   = undo_actions.yank_additions,
                ["<S-cr>"] = undo_actions.yank_deletions,
                ["<C-cr>"] = undo_actions.restore,
              },
              n = {
                ["y"] = undo_actions.yank_additions,
                ["Y"] = undo_actions.yank_deletions,
                ["u"] = undo_actions.restore,
              },
            },
          },
        },
      }
    end,
  },
}

