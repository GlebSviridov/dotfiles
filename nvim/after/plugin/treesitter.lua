local status, ts = pcall(require, 'nvim-treesitter.configs')
if (not status) then
end

ts.setup {
  highlight = {
    enable = true,
    disable = {}
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    'lua',
    'rust',
    'json',
    'tsx',
    'css',
    'javascript',
    'c_sharp',
    'yaml',
    'html',
    'tsx'
  },
  autotag = {
    enable = true,
  }
}
