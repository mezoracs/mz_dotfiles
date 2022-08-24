-- mezora settings

-- general variables
local g=vim.g -- global variable
local o=vim.opt; -- global opt
local wo=vim.wo; -- window opt

-- interface
o.guifont="Liga SFMono Nerd Font:h11";
o.termguicolors=true;
o.background='dark';
o.number=true;
o.numberwidth=4;
o.relativenumber=true;
o.cursorline=false;
o.wrap=false;

-- tools
o.shell="/bin/zsh";

-- workflow
o.clipboard="unnamedplus";
o.hidden=true;
o.splitright=true;
o.smarttab=true;
o.ignorecase=true;
o.smartcase=true;
o.hlsearch=false;
o.tabstop=4;
o.shiftwidth=4;

-- secondary options
o.backup=false;
o.swapfile=false;
o.history=50;
o.mouse="a";

-- syntax
g.python_highlight_all=1

-- colorscheme
g.material_style="darker";
vim.cmd("colorscheme kanagawa");
