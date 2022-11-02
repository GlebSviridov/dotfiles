local Remap = require("keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local nmap = Remap.nmap

local keymap = vim.keymap

-- Do not yank with x
keymap.set('n', 'x', '"_x')

--Open new tab
nnoremap('te', ':tabedit<Return>', { silent = true })
nnoremap('ss',':split<Return><C-w>w',{ silent = true } )
nnoremap('sv', ':vsplit<Return><C-w>w', { silent = true })

--Move cursor to different windows
nnoremap('<Space>', '<C-w>w')
keymap.set('','s<left>', '<C-w>h')
keymap.set('','s<up>', '<C-w>k')
keymap.set('','s<down>', '<C-w>j')
keymap.set('','s<right>', '<C-w>l')
keymap.set('','sh', '<C-w>h')
keymap.set('','sk', '<C-w>k')
keymap.set('','sj', '<C-w>j')
keymap.set('','sl', '<C-w>l')
