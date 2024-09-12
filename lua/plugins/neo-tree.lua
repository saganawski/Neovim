return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- this has something to do with nerdfonts
		"MunifTanjim/nui.nvim",
	},
	config = function()
    require("nvim-web-devicons").setup {
      -- your configuration here, optional
      override = {},
      default = true, -- globally enable default icons
    }
		vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {})
	end,
}
