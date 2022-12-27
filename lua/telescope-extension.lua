require('telescope').setup {
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-h>"] = "which_key"
      }
    },
    file_ignore_patterns = {
      "^vendor/"
    }
  },
  pickers = {
    find_files = {
      -- hidden = true,
    }
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>ft', builtin.treesitter, {})


-- lsp picker key mapping
vim.keymap.set('n', 'gd', builtin.lsp_definitions, {})
vim.keymap.set('n', 'gr', builtin.lsp_references, {})
vim.keymap.set('n', 'gi', builtin.lsp_implementations, {})
vim.keymap.set('n', 'gss', builtin.git_status, {})

-- extension
require('telescope').load_extension('toggletasks')
local extensions = require('telescope').extensions
vim.keymap.set('n', '<leader>ts', extensions.toggletasks.spawn, { desc = 'toggletasks: spawn' })
