from .keys import mod, keys;

from libqtile.config import Key, Group;
from libqtile.lazy import lazy;

group_icon=["", "", "", "拾", "ﭮ" ,"", ""]
groups=[];

for icon in group_icon:
    groups.append(Group(str(icon)));

for i, group in enumerate(groups):
    actual_key = str(i + 1)
    keys.extend([
        Key([mod], actual_key, lazy.group[group.name].toscreen()),
        Key([mod, "shift"], actual_key, lazy.window.togroup(group.name))
]);
