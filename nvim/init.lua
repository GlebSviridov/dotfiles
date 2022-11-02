require('base')
require('highlights')
require('plugins')
require('keymap')

local has = function(x)
  return vim.fn.has(x) == 1
end

local is_mac = has "macunix"


if is_mac then
  require('macos')
end
