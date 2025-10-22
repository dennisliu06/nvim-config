return{ {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup{
    git = {
      enable = true,
      ignore = false,
      timeout = 500,
    },
    filters = {
      custom = {
        '.DS_Store', -- Hides .DS_Store files
        -- Add other patterns here if needed, e.g., 'node_modules', '^\\.git$'
      },
    },
  }
  end,
},{ "nvim-tree/nvim-web-devicons", opts = {} },
}
