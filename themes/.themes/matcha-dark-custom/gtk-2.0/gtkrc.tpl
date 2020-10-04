{% set colors = json("~/.cache/wal/colors.json") -%}
{% set theme = json("~/.config/i3/theme.json") -%}
{% set accent = colors.colors[theme.accent] -%}
{% set urgent = colors.colors[theme.urgent] -%}
gtk-color-scheme = "base_color: #2b2b2b"
gtk-color-scheme = "text_color: #eeeeee"
gtk-color-scheme = "bg_color: #222222"
gtk-color-scheme = "fg_color: #f0f0f0"
gtk-color-scheme = "titlebar_bg_color: #222222"
gtk-color-scheme = "titlebar_fg_color: #D7D7D7"
gtk-color-scheme = "tooltip_bg_color: #222222"
gtk-color-scheme = "tooltip_fg_color: #D7D7D7"
gtk-color-scheme = "selected_bg_color: {{ accent }}"
gtk-color-scheme = "selected_fg_color: #ffffff"
gtk-color-scheme = "insensitive_bg_color: #262626"
gtk-color-scheme = "insensitive_fg_color: #737373"
gtk-color-scheme = "notebook_bg: #222222"
gtk-color-scheme = "dark_sidebar_bg: #363636"
gtk-color-scheme = "link_color: {{ accent }}"
gtk-color-scheme = "menu_bg: #222222"
gtk-color-scheme = "menu_fg: #eeeeee"

gtk-icon-sizes = "gtk-button=16,16" # This makes button icons smaller.
gtk-auto-mnemonics = 1
gtk-primary-button-warps-slider = 1

include "main.rc"
include "apps.rc"
include "panel.rc"
include "xfce-notify.rc"
include "menubar-toolbar.rc"
