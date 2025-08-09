-- The following comments only work if you have downloaded the kickstart repo, not just copy pasted the
-- init.lua. If you want these files, they are in the repository, so you can just download them and
-- place them in the correct locations.

-- NOTE: Next step on your Neovim journey: Add/Configure additional plugins for Kickstart
--
--  Here are some example plugins that I've included in the Kickstart repository.
--  Uncomment any of the lines below to enable them (you will need to restart nvim).
--
-- require 'kickstart.plugins.debug',
require 'kickstart.plugins.indent_line'
-- require 'kickstart.plugins.lint',
-- require 'kickstart.plugins.autopairs',
-- require 'kickstart.plugins.neo-tree',
-- require 'kickstart.plugins.gitsigns', -- adds gitsigns recommend keymaps

return {
  'alexghergh/nvim-tmux-navigation',
  config = function()
    local nvim_tmux_nav = require 'nvim-tmux-navigation'

    -- nvim_tmux_nav.setup {
    -- disable_when_zoomed = true, -- defaults to false
    -- }

    vim.keymap.set('n', '<C-h>', nvim_tmux_nav.NvimTmuxNavigateLeft)
    vim.keymap.set('n', '<C-j>', nvim_tmux_nav.NvimTmuxNavigateDown)
    vim.keymap.set('n', '<C-k>', nvim_tmux_nav.NvimTmuxNavigateUp)
    vim.keymap.set('n', '<C-l>', nvim_tmux_nav.NvimTmuxNavigateRight)

    -- vim.keymap.set('n', '<C-h>', nvim_tmux_nav.NvimTmuxNavigateLeft)
    -- vim.keymap.set('n', '<C-j>', nvim_tmux_nav.NvimTmuxNavigateDown)
    -- vim.keymap.set('n', '<C-k>', nvim_tmux_nav.NvimTmuxNavigateUp)
    -- vim.keymap.set('n', '<C-l>', nvim_tmux_nav.NvimTmuxNavigateRight)
    -- vim.keymap.set('n', '<C-\\>', nvim_tmux_nav.NvimTmuxNavigateLastActive)
    -- vim.keymap.set('n', '<C-Space>', nvim_tmux_nav.NvimTmuxNavigateNext)
  end,
}
