return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate", -- this runs the update properly
  config = function()
    require("nvim-treesitter.configs").setup({
      -- A list of parser names, or "all"
      ensure_installed = {
        "c",
        "java",
        "typescript",
        "javascript",
        "asm",
        "lua",
        "vim",
        "vimdoc",
        "query",
        "markdown",
        "markdown_inline",
      },

      sync_install = false,
      auto_install = true,

      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
    })
  end,
}

