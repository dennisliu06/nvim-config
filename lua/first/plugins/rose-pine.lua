 return {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,  -- load immediately
    priority = 1000, -- make sure it loads before other plugins
    config = function()
	    require("rose-pine").setup({
		    dark_variant = "main", -- or "moon"
	    })

	    -- Add error handling
	    local ok, _ = pcall(vim.cmd, "colorscheme rose-pine")
	    if not ok then
		    vim.cmd("colorscheme default")
	    end

	    local hl = vim.api.nvim_set_hl
	    hl(0, "Normal", { bg = "none" })
	    hl(0, "NormalNC", { bg = "none" })
	    hl(0, "NormalFloat", { bg = "none" })
	    hl(0, "VertSplit", { bg = "none" })
	    hl(0, "StatusLine", { bg = "none" })
	    hl(0, "LineNr", { bg = "none" })
	    hl(0, "CursorLineNr", { bg = "none" })
    end,
}

