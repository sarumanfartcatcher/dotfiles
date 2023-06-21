return {
  {
    'hrsh7th/nvim-cmp', -- Autocompletion plugin
    event = 'InsertEnter',
    dependencies = {
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-path' },
      { 'hrsh7th/cmp-calc' },
      { 'hrsh7th/cmp-emoji' },
      {
        'L3MON4D3/LuaSnip',
        config = function()
          require('luasnip.loaders.from_vscode').lazy_load()
        end,
        dependencies = {
          'saadparwaiz1/cmp_luasnip',
          'rafamadriz/friendly-snippets',
        },
      },
      { 'hrsh7th/cmp-cmdline' },
      { 'onsails/lspkind.nvim' },
      {
        'zbirenbaum/copilot-cmp',
        config = true,
        dependencies = {
          'zbirenbaum/copilot.lua',
        },
      },
      { 'neovim/nvim-lspconfig' },
      { 'ray-x/cmp-treesitter' },
      -- { 'jc-doyle/cmp-pandoc-references' },
      {
        dir = '/Users/jonathanmilligan/code/cmp-pandoc-references',
        branch = 'feat_api',
      },
      { 'chrisgrieser/cmp-nerdfont' },
    },
    config = function()
      local cmp = require('cmp')

      -- Setup icons
      local lspkind = require('lspkind')
      local luasnip = require('luasnip')

      -- Select first item by default
      -- vim.opt.completeopt = 'menuone,preview,noselect'

      cmp.setup({
        enabled = function()
          local in_prompt = vim.api.nvim_buf_get_option(0, 'buftype') == 'prompt'
          if in_prompt then -- Disable CMP in the Telescope window
            return false
          end
          local context = require('cmp.config.context')
          return not (
            context.in_treesitter_capture('comment') == true -- Disable CMP in code comments
            or context.in_syntax_group('Comment')
          )
        end,
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        mapping = {
          ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
              luasnip.expand_or_jump()
            else
              fallback()
            end
          end, { 'i', 's' }),
          ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end, { 'i', 's' }),
          ['<C-d>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          -- ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.close(),
          ['<S-CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
          }),
        },
        sources = {
          { name = 'nvim_lsp' },
          { name = 'path' },
          { name = 'luasnip' },
          { name = 'copilot' },
          { name = 'calc' },
          { name = 'emoji' },
          { name = 'treesitter' },
          { name = 'pandoc-references' },
          { name = 'nerdfont' },
        },
        formatting = {
          format = lspkind.cmp_format({
            preset = 'codicons',
            mode = 'symbol',
            maxwidth = 50,
            ellipsis = '…',
          }),
        },
        completion = { completeopt = 'menu,menuone,noinsert' },
        experimental = { ghost_text = false }, -- Shows the suggestion in italics. Esp. helpful for seeing the entire Copilot suggestion
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        sorting = {
          priority_weight = 2,
          comparators = {
            cmp.config.compare.offset,
            cmp.config.compare.exact,
            cmp.config.compare.score,
            cmp.config.recently_used,
            cmp.config.compare.kind,
            cmp.config.compare.sort_text,
            -- cmp.config.compare.length,
            cmp.config.compare.order,
          },
        },
        view = {
          entries = { name = 'custom', selection_order = 'near_cursor' },
        },
      })

      cmp.event:on('confirm_done', require('nvim-autopairs.completion.cmp').on_confirm_done())
    end,
  },
}
