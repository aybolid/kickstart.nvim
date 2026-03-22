---@module 'lazy'
---@type LazySpec
return {
  {
    'kdheepak/lazygit.nvim',
    lazy = true,
    cmd = {
      'LazyGit',
      'LazyGitConfig',
      'LazyGitCurrentFile',
      'LazyGitFilter',
      'LazyGitFilterCurrentFile',
    },
    keys = {
      { '<leader>l', '<cmd>LazyGitCurrentFile<cr>', desc = 'Start [L]azyGit' },
    },
  },
}
