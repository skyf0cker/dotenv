require("breadcrumb").setup({
  disabled_filetype = {
    "",
    "help",
  },
  icons = {
    File = " ",
    Module = " ",
    Namespace = " ",
    Package = " ",
    Class = " ",
    Method = " ",
    Property = " ",
    Field = " ",
    Constructor = " ",
    Enum = "練",
    Interface = "練",
    Function = " ",
    Variable = " ",
    Constant = " ",
    String = " ",
    Number = " ",
    Boolean = "◩ ",
    Array = " ",
    Object = " ",
    Key = " ",
    Null = "ﳠ ",
    EnumMember = " ",
    Struct = " ",
    Event = " ",
    Operator = " ",
    TypeParameter = " ",
  },
  separator = ">",
  depth_limit = 6,
  depth_limit_indicator = "..",
  color_icons = true,
  highlight_group = {
    component = "BreadcrumbText",
    separator = "BreadcrumbSeparator",
  },
})

local breadcrumb = function()
  local breadcrumb_status_ok, breadcrumb = pcall(require, "breadcrumb")
  if not breadcrumb_status_ok then
    return
  end
  return breadcrumb.get_breadcrumb()
end

require('lualine').setup({
  options = {
    theme = 'tokyonight'
  },
  sections = {
    -- lualine_c = {
    --   {
    --     'filename',
    --     file_status = true, -- Displays file status (readonly status, modified status)
    --     path = 3,
    --
    --     shorting_target = 40 -- Shortens path to leave 40 spaces in the window
    --   }
    -- },
    lualine_c = { breadcrumb }
  }
})
