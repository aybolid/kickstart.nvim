---@module 'lazy'
---@type LazySpec
return {

  {
    'oskarnurm/koda.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      local dark_palette = require 'koda.palette.dark'
      local light_palette = require 'koda.palette.light'

      dark_palette.string = dark_palette.success
      dark_palette.char = dark_palette.success
      dark_palette.special = dark_palette.success
      dark_palette.keyword = dark_palette.pink

      light_palette.keyword = light_palette.pink

      require('koda').setup {
        transparent = false,
        styles = {
          functions = { bold = true },
          keywords = {},
          comments = {},
          strings = {},
          constants = {}, -- includes numbers, booleans
        },
      }
      vim.cmd.colorscheme 'koda'
    end,
  },

  -- {
  --   'rebelot/kanagawa.nvim',
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require('kanagawa').setup {
  --       compile = false, -- enable compiling the colorscheme
  --       undercurl = true, -- enable undercurls
  --       commentStyle = { italic = false },
  --       functionStyle = {},
  --       keywordStyle = { italic = false },
  --       statementStyle = { bold = true },
  --       typeStyle = {},
  --       transparent = false, -- do not set background color
  --       dimInactive = false, -- dim inactive window `:h hl-NormalNC`
  --       terminalColors = true, -- define vim.g.terminal_color_{0,17}
  --       colors = { -- add/modify theme and palette colors
  --         palette = {},
  --         theme = {
  --           wave = {},
  --           lotus = {},
  --           dragon = {},
  --           all = {
  --             ui = {
  --               bg_gutter = 'none',
  --             },
  --           },
  --         },
  --       },
  --       overrides = function(colors)
  --         local theme = colors.theme
  --
  --         local makeDiagnosticColor = function(color)
  --           local c = require 'kanagawa.lib.color'
  --           return { fg = color, bg = c(color):blend(theme.ui.bg, 0.95):to_hex() }
  --         end
  --
  --         return {
  --           DiagnosticVirtualTextHint = makeDiagnosticColor(theme.diag.hint),
  --           DiagnosticVirtualTextInfo = makeDiagnosticColor(theme.diag.info),
  --           DiagnosticVirtualTextWarn = makeDiagnosticColor(theme.diag.warning),
  --           DiagnosticVirtualTextError = makeDiagnosticColor(theme.diag.error),
  --
  --           Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- add `blend = vim.o.pumblend` to enable transparency
  --           PmenuSel = { fg = 'NONE', bg = theme.ui.bg_p2 },
  --           PmenuSbar = { bg = theme.ui.bg_m1 },
  --           PmenuThumb = { bg = theme.ui.bg_p2 },
  --         }
  --       end,
  --       theme = 'dragon',
  --       background = { -- map the value of 'background' option to a theme
  --         dark = 'dragon',
  --         light = 'lotus',
  --       },
  --     }
  --
  --     vim.cmd.colorscheme 'kanagawa'
  --   end,
  -- },
}
