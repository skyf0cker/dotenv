require('lualine').setup({
  options = {
    theme = 'tokyonight'
  },
  sections = {
    lualine_c = {
      {
        'filename',
        file_status = true, -- Displays file status (readonly status, modified status)
        path = 3,

        shorting_target = 40 -- Shortens path to leave 40 spaces in the window
      }
    }
  }
})
