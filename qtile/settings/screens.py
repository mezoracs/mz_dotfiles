from libqtile import bar;
from libqtile.config import Screen;

from .widgets import widget_list;

screens=[
    Screen(top=bar.Bar(widget_list, 28, background="#111111"))
];
