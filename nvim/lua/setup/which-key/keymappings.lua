local packer = require('packer')

require('which-key').register({
  [';'] = { name = 'Dashboard', { '<CMD>Alpha<CR>', 'Dashboard' } },

  e = { name = 'File Tree', { '<CMD>NvimTreeToggle<CR>', 'File Tree' } },

  w = { name = 'Save', { '<CMD>w!<CR>', 'Save' } },

  Q = { name = 'Quit', { '<CMD>q<CR>', 'Quit' } }, -- Uppercase makes it harder to bump next to w

  h = { name = 'No Highlight', { '<CMD>nohl<CR>', 'No Highlight' } },

  p = {
    name = 'Packer',
    c = { packer.compile, '[c]ompile' },
    i = { packer.install, '[i]nstall' },
    s = { packer.sync, '[s]ync' },
    S = { packer.status, '[S]tatus' },
    u = { packer.update, '[u]pdate' },
  },

  s = {
    name = 'Search',
    s = { '<CMD>Telescope<CR>', 'Search' },
    b = { '<CMD>Telescope git_branches<CR>', '[b]ranches' },
    c = { '<CMD>Telescope colorscheme<CR>', '[c]olorscheme' },
    f = { '<CMD>Telescope find_files<CR>', '[f]ile' },
    h = { '<CMD>Telescope help_tags<CR>', '[h]elp' },
    H = { '<CMD>Telescope highlights<CR>', '[H]ighlight groups' },
    M = { '<CMD>Telescope man_pages<CR>', '[M]an pages' },
    r = { '<CMD>Telescope oldfiles<CR>', '[r]ecent file' },
    R = { '<CMD>Telescope registers<CR>', '[R]egisters' },
    t = { '<CMD>Telescope live_grep<CR>', '[t]ext' },
    T = { '<CMD>TodoTelescope<CR>', '[T]odos' },
    k = { '<CMD>Telescope keymaps<CR>', '[k]eymaps' },
    C = { '<CMD>Telescope commands<CR>', '[C]ommands' },
    p = { '<CMD>Telescope planets<CR>', '[p]lanets' },
  },

  t = { name = 'Trouble', { '<CMD>TroubleToggle<CR>', '[t]oggle' } },

  b = {
    name = 'BarBar',
    p = { '<CMD>BufferPrevious<CR>', 'Previous Buffer' },
    n = { '<CMD>BufferNext<CR>', 'Next Buffer' },
    ['1'] = { '<CMD>BufferGoto [1]<CR>', 'Goto Buffer 1' },
    ['2'] = { '<CMD>BufferGoto [2]<CR>', 'Goto Buffer 2' },
    ['3'] = { '<CMD>BufferGoto [3]<CR>', 'Goto Buffer 3' },
    ['4'] = { '<CMD>BufferGoto [4]<CR>', 'Goto Buffer 4' },
    ['5'] = { '<CMD>BufferGoto [5]<CR>', 'Goto Buffer 5' },
    ['6'] = { '<CMD>BufferGoto [6]<CR>', 'Goto Buffer 6' },
    ['7'] = { '<CMD>BufferGoto [7]<CR>', 'Goto Buffer 7' },
    ['8'] = { '<CMD>BufferGoto [8]<CR>', 'Goto Buffer 8' },
    ['9'] = { '<CMD>BufferGoto [9]<CR>', 'Goto Buffer 9' },
    ['0'] = { '<CMD>BufferLast<CR>', 'Last Buffer' },
    i = { '<CMD>BufferPin<CR>', 'P[i]n Buffer' },
    c = { '<CMD>BufferClose<CR>', '[c]lose Buffer' },
    s = { '<CMD>Telescope buffers<CR>', '[s]earch buffers' },
  },

  g = {
    name = 'Git',
    b = { '<CMD>Telescope git_branches<CR>', 'Checkout branch' },
    c = { '<CMD>Telescope git_commits<CR>', 'Checkout commit' },
    C = {
      '<CMD>Telescope git_bcommits<CR>',
      '[C]heckout commit(for current file)',
    },
    s = { '<CMD>Telescope git_status<CR>', 'Git [s]tatus' },
    h = {
      name = 'Hunk',
      s = { '<CMD>Gitsigns stage_hunk<CR>', '[s]tage hunk' },
      u = { '<CMD>Gitsigns undo_stage_hunk<CR>', '[u]ndo stage hunk' },
      r = { '<CMD>Gitsigns reset_hunk<CR>', '[r]eset hunk' },
      p = { '<CMD>Gitsigns preview_hunk<CR>', '[p]review hunk' },
      n = { '<CMD>Gitsigns next_hunk<CR>', '[n]ext hunk' },
      b = { '<CMD>Gitsigns prev_hunk<CR>', '[back] hunk' },
    },
  },

  l = {
    name = 'LSP',
    r = { vim.lsp.buf.rename, '[R]ename' },
    i = { vim.lsp.buf.hover, '[I]nformation' },
    d = { vim.lsp.buf.definition, '[d]efinition' },
    D = { vim.lsp.buf.declaration, '[D]eclaration' }, -- Some servers don't implement this feature
    m = { vim.lsp.buf.implementation, 'I[m]plementation' },
    q = { vim.lsp.buf.references, '[q]uickfix' },
    e = { vim.diagnostic.open_float, 'Diagnostics' },
    a = { vim.lsp.buf.code_action, 'Code [a]ction' },
  },

  m = {
    name = 'Markdown',
    p = { '<CMD>MarkdownPreviewToggle<CR>', '[p]review' },
    h = { '<CMD>MarkdownToHTML<CR>', 'Convert to [h]TML' },
    H = { '<CMD>NewMarkdownToHTML<CR>', 'Convert to [H]TML in a new file' },
    l = { '<CMD>Telekasten follow_link<CR>', 'Follow [l]ink' },
    i = { '<CMD>Telekasten insert_link<CR>', '[i]nsert link' },
    r = { '<CMD>Telekasten rename_note<CR>', '[r]ename link' },
    b = { '<CMD>Telekasten show_backlinks<CR>', 'Show [b]acklinks' },
    t = { '<CMD>Telekasten show_tags<CR>', 'Show [t]ags' },
    n = { '<CMD>Telekasten new_note<CR>', '[n]ew note' },
    f = { '<CMD>Telekasten find_notes<CR>', '[f]ind notes' },
    s = { '<CMD>Telekasten search_notes<CR>', '[s]earch notes' },
    -- p = { '<CMD>Telekasten panel<CR>', '[p]anel' },
  },
}, { prefix = '<leader>' })
