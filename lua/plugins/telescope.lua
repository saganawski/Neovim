return{
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()

      local builtin = require("telescope.builtin")
      vim.keymap.set('n', '<C-p>', builtin.find_files,{})
      vim.keymap.set('n', '<leader>fg',builtin.live_grep,{})

      -- Setup telescope to with file ignore patterns
      require("telescope").setup({
        defaults = {
          file_ignore_patterns={".target"}
        }
      })

    end
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }

          }
        }
      })
      require("telescope").load_extension("ui-select")
    end

  }
}
