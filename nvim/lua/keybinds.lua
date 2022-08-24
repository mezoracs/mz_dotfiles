-- mezora keys config

-- mapper func
local function mapk(mode, key, result)
	vim.keymap.set(mode, key, result, {silent=true})
end

-- leader
vim.g.mapleader=" ";

-- instant keys
mapk("n","<Leader>w",":w<CR>"); -- save
mapk("n", "<Leader>q", ":q<CR>"); -- quit

-- movement keys
mapk("n", "<C-Z>", ":u<CR>"); -- return
mapk("n", "<A-Up>", ":m -2<CR>") -- move top
mapk("n", "<A-Down>", ":m +1<CR>") -- move bottom
mapk("i", "<A-Up>", ":<ESC>:m -2<CR>")

-- clipboard
vim.api.nvim_set_option("clipboard","unnamed");
mapk({'n', 'x'}, "<C-C>", '"+y');
mapk({'n', 'x'}, "<C-V>", '"+p');

-- select text
mapk("n", "<C-S-Up>", "v<Up>");
mapk("n", "<C-S-Down>", "v<Down>");
mapk("n", "<C-S-Left>", "v<Left>");
mapk("n", "<C-S-Right>", "v<Right>");

mapk("v", "<C-S-Up>", "<Up>");
mapk("v", "<C-S-Down>", "<Down>");
mapk("v", "<C-S-Left>", "<Left>");
mapk("v", "<C-S-Right>", "<Right>");

mapk("i", "<C-S-Up>", "<ESC>v<Up>");
mapk("i", "<C-S-Down>", "<ESC>v<Down>");
mapk("i", "<C-S-Left>", "<ESC>v<Left>");
mapk("i", "<C-S-Right>", "<ESC>v<Right>");
