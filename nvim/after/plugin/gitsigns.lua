local status, gitsigns = pcall(require, 'gitsigns')
if not stauts then
  return
end

gitsigns.setup {}
