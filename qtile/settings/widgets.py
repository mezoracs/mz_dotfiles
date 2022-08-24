from libqtile import widget;

colors=[
    ["#111111","#111111"], # background
    ["#222222","#222222"], # highlight color
    ["#FF3636","#FF3636"], # red color
    ["#4C4C4C","#4C4C4C"], # inactive color
    ["#FFFFFF","#FFFFFF"], # foreground basic dark
    ["#F54E3B","#F54E3B"], # bright red
];

font_family="Caskaydia Cove Nerd Font";

def default_conf(fontsize=13,fg=colors[4]):
    return {
        "font":font_family,
        "fontsize":fontsize,
        "foreground":fg,
        "background":colors[0],
    };
def default_icon(fontsize=13, icon="",fg=colors[2], pad=10):
    return{
        "font":font_family,
        "fontsize":fontsize,
        "text":icon,
        "foreground":fg,
        "padding":pad,
    };
def separator(pad=10):
    return widget.Sep(
        **default_conf(),
        padding=pad,
        linewidth=0, 
    );

widget_list=[
    widget.GroupBox(
        **default_conf(),
        spacing=10,
        padding=5,
        highlight_method="line",
        highlight_color=colors[1],
        this_current_screen_border=colors[2],
        this_screen_border=colors[2],
        active=colors[2],
        inactive=colors[3],
        center_aligned=True,
        disable_drag=True,
    ),
    separator(),
    widget.TextBox(
        **default_icon(icon=" "),
    ),
    widget.WindowName(
        **default_conf(),
        empty_group_string="Looks clear :)",
        max_chars=22,
    ),
    separator(),
    widget.TextBox(
        **default_icon(icon=""),
    ),
    widget.CryptoTicker(
        **default_conf(),
        format='{crypto}:{amount:,.2f}'
    ),
    separator(),
    widget.TextBox(
        **default_icon(icon=""),
    ),
    widget.Net(
        **default_conf(),
        interface="wlan0",
        prefix="k",
    ),
    separator(),
    widget.TextBox(
        **default_icon(icon=""),
    ),
    widget.Memory(
        **default_conf(),
        format="{MemUsed:.2f} / {MemTotal:.2f} GB",
        measure_mem="G",
    ),
    separator(),
    widget.TextBox(
        **default_icon(icon=""),
    ),
    widget.Clock(
        **default_conf(),
        format="%d/%m/%Y %a",
    ),
    separator(),
    widget.TextBox(
        **default_icon(icon="", fontsize=17),
    ),
    widget.PulseVolume(
        **default_conf(),
        get_volume_command=True,
        update_interval=0.01,
    ),
    separator(),
    widget.TextBox(
        **default_icon(icon="", fontsize=17),
    ),
    widget.OpenWeather(
        **default_conf(),
        location='Lima', 
        format='{location_city} {temp}°C'
    ),
    separator(),
    widget.TextBox(
        **default_icon(icon=""),
    ),
    widget.Clock(
        **default_conf(),
        format="%I:%M:%S %p",
    ),
    separator(),
    widget.TextBox(
        **default_icon(icon=""),
    ),
    widget.NvidiaSensors(
        **default_conf(),
        gpu_bus_id="02:00.0",
        format="GPU {temp}°C",
    ),
    separator(),
];

widget_defaults=dict(
    **default_conf(),
);
extension_defaults=widget_defaults.copy();
