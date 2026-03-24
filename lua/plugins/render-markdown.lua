---@module 'lazy'
---@type LazySpec
return {
  'MeanderingProgrammer/render-markdown.nvim',
  config = function()
    require('render-markdown').setup {
      heading = {
        icons = { '', '', '', '', '', '' },
      },
    }
  end,
  ft = 'markdown',
}
