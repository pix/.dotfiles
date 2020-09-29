{% set colors = json("~/.cache/wal/colors.json") -%}
{% set theme = json("~/.config/i3/theme.json") -%}
{% set accent = colors.colors[theme.accent] -%}
{% set urgent = colors.colors[theme.urgent] -%}

@import "~/.cache/wal/colors-rofi-dark-alt.rasi"


* {
    active-background: {{ accent }};
    active-foreground: @foreground;
    normal-background: @background;
    normal-foreground: @foreground;
    urgent-background: {{ urgent }};
    urgent-foreground: @foreground;

    alternate-active-background: @background;
    alternate-active-foreground: @foreground;
    alternate-normal-background: @background;
    alternate-normal-foreground: @foreground;
    alternate-urgent-background: @background;
    alternate-urgent-foreground: @foreground;

    selected-active-background: {{ urgent }};
    selected-active-foreground: @foreground;
    selected-normal-background: {{ accent }};
    selected-normal-foreground: @foreground;
    selected-urgent-background: {{ urgent }};
    selected-urgent-foreground: @foreground;

    background-color: @background;
    background: #1d2021;
    foreground: #a89984;
    border-color: @background;
    spacing: 2;
}
