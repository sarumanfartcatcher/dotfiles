return {
  {
    'TimUntersberger/neogit',
    cmd = 'Neogit',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'sindrets/diffview.nvim',
    },
    config = function()
      vim.api.nvim_create_augroup('neogit-additions', {})
      vim.api.nvim_create_autocmd('FileType', {
        group = 'neogit-additions',
        pattern = 'NeogitCommitMessage',
        command = 'silent! set filetype=gitcommit',
      })

      require('neogit').setup({
        signs = {
          section = { '', '' },
          item = { '', '' },
          hunk = { '', '' },
        },
        integrations = {
          diffview = true,
        },
      })
    end,
  },
}
