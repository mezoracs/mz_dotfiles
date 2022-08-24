-- mezora lualine set up theme

local custom_gruvbox = require'lualine.themes.gruvbox'

custom_gruvbox.normal.c.bg = '#111111'

require('lualine').setup {
  options = { theme  = custom_gruvbox }
}
