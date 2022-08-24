If you are using laptop, add the following line

widget.TextBox(
        **default_icon(icon=" "),
),
widget.Battery(
    **default_conf(),
    battery="BAT1",
    charge_char="⚡",
    discharge_char="NC",
    format="{char} {percent:2.0%}",
    update_interval=5,
),
