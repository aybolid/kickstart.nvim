---@module 'lazy'
---@type LazySpec
return {
  {
    'stevearc/oil.nvim',
    config = function()
      local oil = require 'oil'
      oil.setup {
        columns = {
          'icon',
          'permissions',
          'size',
          'mtime',
        },
        view_options = {
          show_hidden = true,
        },
      }
      vim.keymap.set('n', '<leader>e', oil.open, { desc = 'Open File [E]xplorer' })
    end,
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
  },
}
