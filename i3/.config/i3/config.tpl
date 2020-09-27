# i3 config file (v4)
#

# auto-reload configs
exec_always --no-startup-id ~/.bin/i3-config-templater

set $rofi_theme
set $switch ~/.virtualenvs/i3/bin/python ~/.bin/focus-last --switch
set $cmd_i3cmd ~/.virtualenvs/i3/bin/python ~/.config/i3/scripts/i3-cmd-menu --
set $cmd_refresh ~/.config/i3/scripts/wal-nitrogen.sh
set $cmd_locker exec --no-startup-id xautolock -locknow, exec --no-startup-id xset dpms force off

set $window_name $(~/.virtualenvs/i3/bin/python ~/.config/i3/scripts/i3-current-title)
set $osd_id -h string:x-canonical-private-synchronous:anything -u low

exec_always $cmd_refresh


set_from_resource $accent     i3wm.accent
set_from_resource $urgent     i3wm.urgent
set_from_resource $background i3wm.background
set_from_resource $foreground foreground
set_from_resource $color0     color0     # black
set_from_resource $color1     color1     # red
set_from_resource $color2     color2     # green
set_from_resource $color3     color3     # yellow
set_from_resource $color4     color4     # blue
set_from_resource $color5     color5     # magenta
set_from_resource $color6     color6     # cyan
set_from_resource $color7     color7     # white
set_from_resource $color8     color8     # black  black
set_from_resource $color9     color9     # red
set_from_resource $color10    color10    # green
set_from_resource $color11    color11    # yellow
set_from_resource $color12    color12    # blue
set_from_resource $color13    color13    # magenta
set_from_resource $color14    color14    # cyan
set_from_resource $color15    color15    # white

set $alt Mod1
set $mod Mod4

# Set default monitors
set $monitor_1 DP1-1
set $monitor_2 DP1-2
set $monitor_3 DP1-3

########################################################################
# Workspace names
# term:  ie: mail:  box: tool: word: skull:
#
set $ws1 "1:"
set $ws2 "2:"
set $ws3 "3:"
set $ws4 "4:"
set $ws5 "5:"
set $ws6 "6:"
set $ws7 "7:"
set $ws8 "8:"
set $ws9 "9:"
set $ws10 "10:"
set $ws11 "11"
set $ws12 "12"
set $ws13 "13"
set $ws14 "14"
set $ws15 "15"
set $ws16 "16"
set $ws17 "17"
set $ws18 "18"
set $ws19 "19"
set $ws20 "20"

set $ws_web    "2:"
# workspace_default_layout 2 tabbed
set $ws_mail   "3:"
# workspace_default_layout 3 tabbed
set $ws_vm     "4:"
# workspace_default_layout 4 tabbed
set $ws_code   "5:"
# workspace_default_layout 5 tabbed
set $ws_office "6:"
# workspace_default_layout 6 tabbed

set $border_floating normal 2
set $border_no_floating pixel 1

# Include  specific files
{% for x in ("~/.config/i3/hosts.d/vars-" + hostname + "*") | fileglob %}
{% include x %}
{% endfor %}
{% for x in ("~/.config/i3/local.d/*") | fileglob %}
{% include x %}
{% endfor %}

# Font for window titles. Will also be used by the bar unless a different font
# is used in the bar {} block below.
# font pango:FontAwesome5Free-regular 20, UbuntuMono-regular 7
# font pango:Font Awesome 20, Ubuntu Mono 7
# font pango:Font Awesome 7, Ubuntu Mono 7
# font pango:Font Awesome 5 Free 7, Consolas 7
font xft:Source Code Pro 8

# Before i3 v4.8, we used to recommend this one as the default:
#
#font -misc-fixed-medium-r-normal--8-120-75-75-C-70-iso10646-1
# The font above is very space-efficient, that is, it looks good, sharp and
# clear in small sizes. However, its unicode glyph coverage is limited, the old
# X core fonts rendering does not support right-to-left and this being a bitmap
# font, it doesn’t scale on retina/hidpi displays.

focus_on_window_activation none
show_marks yes

smart_gaps yes
gaps inner 7
gaps outer 4

########################################################################
# Colors
#
client.focused $accent $accent #000000 $background
client.focused_inactive $background $background $accent $background
client.unfocused $background $background #999999 $background
client.urgent $urgent $urgent #ffffff #ebdbb2

########################################################################
# Borders
hide_edge_borders smart
default_border $border_no_floating
default_floating_border $border_floating

# Use Mouse+$mod to drag floating windows to their wanted position
floating_modifier $mod

# start a terminal
# %%hotkey: Start a terminal %%
bindsym $mod+Return exec --no-startup-id i3-sensible-terminal

# kill focused window
# %%hotkey: Kill focused window %%
bindsym $mod+Shift+k kill
# %%hotkey: Kill focused window %%
bindsym $alt+F4      kill

# start dmenu (a program launcher)
# %%hotkey: Start dmenu launcher %%
bindsym $mod+d exec --no-startup-id "rofi -modi window,run,drun,file-browser,ssh,windowcd,combi,keys -show combi -sidebar-mod -file-browser-oc-cmd 'env;icon:system-run'"
bindsym $mod+Shift+question exec --no-startup-id ~/.virtualenvs/i3/bin/dmenu_hotkeys run -m rofi --app i3
bindsym $mod+colon exec --no-startup-id rofi-emoji

# alternatively, you can use the cursor keys:
# %%hotkey: Move focus left %%
bindsym $mod+Left focus left
# %%hotkey: Move focus down %%
bindsym $mod+Down focus down
# %%hotkey: Move focus up %%
bindsym $mod+Up focus up
# %%hotkey: Move focus right %%
bindsym $mod+Right focus right

# alternatively, you can use the cursor keys:
# %%hotkey: Move current window left %%
bindsym $mod+Shift+Left move left
# %%hotkey: Move current window down %%
bindsym $mod+Shift+Down move down
# %%hotkey: Move current window up %%
bindsym $mod+Shift+Up move up
# %%hotkey: Move current window right %%
bindsym $mod+Shift+Right move right

# %%hotkey: Set layout to horizontal %%
bindsym $mod+h split h, exec notify-send $osd_id '$mod + H: Tile Horizontally' '\n<i>Mod4 + V: Tile Vertically</i>'
# %%hotkey: Set layout to vertical %%
bindsym $mod+v split v, exec notify-send $osd_id '$mod + V: Tile Vertically' '\n<i>Mod4 + H: Tile Horizontally</i>'

# %%hotkey: Enter fullscreen mode for the focused container %%
bindsym $mod+f fullscreen toggle

set $bindings <i>\n\
Mod4 + S : layout stacking\n\
Mod4 + Z: layout tabbed\n\
Mod4 + E: layout split\n\
Mod4 + W: layout toggle\n\
</i>
# change container layout (stacked, tabbed, toggle split)
# %%hotkey: Set layout to stacking mode %%
bindsym $mod+s layout stacking, exec notify-send $osd_id '$mod + S : layout stacking' '$bindings'
# %%hotkey: Set layout to tabbed mode %%
bindsym $mod+z layout tabbed, exec notify-send $osd_id '$mod + Z: layout tabbed' '$bindings'
# %%hotkey: Toggle splitted layout mode %%
bindsym $mod+e layout toggle split, exec notify-send $osd_id '$mod + E: layout split' '$bindings'
# %%hotkey: Toggle all layout mode %%
bindsym $mod+w layout toggle all, exec notify-send $osd_id '$mod + W: layout toggle all' '$bindings'

bindsym $mod+Shift+s exec ~/.config/i3/scripts/rofi-systemd

# %%hotkey: Toggle tilling / floating mode %%
bindsym $mod+Shift+space floating toggle
# %%hotkey: Change focus between tiling / floating windows %%
bindsym $mod+space focus mode_toggle
# %%hotkey: Focus the parent container
bindsym $mod+q focus parent

########################################################################
# %%hotkey: Lock the screen
bindsym $mod+l $cmd_locker

# %%hotkey: Send workspace to output left %%
bindsym $mod+Control+Left move workspace to output left

# %%hotkey: Send workspace to output right %%
bindsym $mod+Control+Right move workspace to output right

# %%hotkey: Send workspace to output up %%
bindsym $mod+Control+Up move workspace to output up

# %%hotkey: Send workspace to output down %%
bindsym $mod+Control+Down move workspace to output down

########################################################################
# Arrange window for 3 screens
#
# %%hotkey: Send workspace/apps where they belong at work %%
bindsym $mod+a exec $cmd_refresh, \
               exec --no-startup-id autorandr -f -c,                 \
               \
               workspace $ws1, move workspace to output $monitor_2, \
               workspace $ws2, move workspace to output $monitor_1, \
               workspace $ws3, move workspace to output $monitor_3, \
               \
               workspace $ws4, move workspace to output $monitor_3, \
               workspace $ws5, move workspace to output $monitor_3, \
               workspace $ws6, move workspace to output $monitor_3, \
               \
               workspace $ws7, move workspace to output $monitor_3, \
               workspace $ws8, move workspace to output $monitor_3, \
               workspace $ws9, move workspace to output $monitor_3, \
               \
               workspace $ws10, move workspace to output $monitor_2, \
               workspace $ws11, move workspace to output $monitor_3, \
               workspace $ws12, move workspace to output $monitor_3, \
               workspace $ws13, move workspace to output $monitor_3, \
               workspace $ws14, move workspace to output $monitor_3, \
               workspace $ws15, move workspace to output $monitor_3, \
               workspace $ws16, move workspace to output $monitor_3, \
               workspace $ws17, move workspace to output $monitor_3, \
               workspace $ws18, move workspace to output $monitor_3, \
               workspace $ws19, move workspace to output $monitor_3, \
               workspace $ws20, move workspace to output $monitor_3, \
               \
               workspace $ws2, \
               workspace $ws3, \
               workspace $ws1, \
               \
               exec --no-startup-id ~/.bin/i3-config-templater

# %%hotkey: Send virt-viewer screens to the right monitors %%
bindsym $mod+Shift+a \
            exec --no-startup-id autorandr single


########################################################################
# Focus / Workspace switch <Alt/Mod/Ctrl> + Tab
# %%hotkey: Goto previous workspace on output %%
bindsym $mod+Tab                workspace prev_on_output, \
                                exec notify-send $osd_id 'Workspace' "$window_name"

# %%hotkey: Goto next workspace on output %%
bindsym $mod+Shift+Tab          workspace next_on_output, \
                                exec notify-send $osd_id 'Workspace' "$window_name"

# %%hotkey: Goto previous workspace %%
bindsym Control+Tab             workspace prev, \
                                exec notify-send $osd_id 'Workspace' "$window_name"

# %%hotkey: Goto next workspace %%
bindsym Control+Shift+Tab       workspace next, \
                                exec notify-send $osd_id 'Workspace' "$window_name"

# %%hotkey: Focus previous window %%
bindsym $alt+Tab                exec --no-startup-id "~/.config/i3/scripts/focus-next prev", \
                                exec notify-send $osd_id 'Focus' "$window_name"

# %%hotkey: Focus next window %%
bindsym $alt+Shift+Tab          exec --no-startup-id "~/.config/i3/scripts/focus-next next", \
                                exec notify-send $osd_id 'Focus' '$window_name'

########################################################################
# Workspace controls and settings

# Go back and forth on repeated changes
workspace_auto_back_and_forth yes

# switch to workspace
# %%hotkey: Goto workspace 1 %%
bindsym $mod+1   workspace $ws1
# %%hotkey: Goto workspace 2 %%
bindsym $mod+2   workspace $ws2
# %%hotkey: Goto workspace 3 %%
bindsym $mod+3   workspace $ws3
# %%hotkey: Goto workspace 4 %%
bindsym $mod+4   workspace $ws4
# %%hotkey: Goto workspace 5 %%
bindsym $mod+5   workspace $ws5
# %%hotkey: Goto workspace 6 %%
bindsym $mod+6   workspace $ws6
# %%hotkey: Goto workspace 7 %%
bindsym $mod+7   workspace $ws7
# %%hotkey: Goto workspace 8 %%
bindsym $mod+8   workspace $ws8
# %%hotkey: Goto workspace 9 %%
bindsym $mod+9   workspace $ws9
# %%hotkey: Goto workspace 10 %%
bindsym $mod+0   workspace $ws10
# %%hotkey: Goto workspace 11 %%
bindsym $mod+F1  workspace $ws11
# %%hotkey: Goto workspace 12 %%
bindsym $mod+F2  workspace $ws12
# %%hotkey: Goto workspace 13 %%
bindsym $mod+F3  workspace $ws13
# %%hotkey: Goto workspace 14 %%
bindsym $mod+F4  workspace $ws14
# %%hotkey: Goto workspace 15 %%
bindsym $mod+F5  workspace $ws15
# %%hotkey: Goto workspace 16 %%
bindsym $mod+F6  workspace $ws16
# %%hotkey: Goto workspace 17 %%
bindsym $mod+F7  workspace $ws17
# %%hotkey: Goto workspace 18 %%
bindsym $mod+F8  workspace $ws18
# %%hotkey: Goto workspace 19 %%
bindsym $mod+F9  workspace $ws19
# %%hotkey: Goto workspace 20 %%
bindsym $mod+F10 workspace $ws20

# move focused container to workspace
# %%hotkey: Move focused container and go to workspace 1 %%
bindsym $mod+Shift+1   move container to workspace $ws1;  workspace $ws1
# %%hotkey: Move focused container and go to workspace 2 %%
bindsym $mod+Shift+2   move container to workspace $ws2;  workspace $ws2
# %%hotkey: Move focused container and go to workspace 3 %%
bindsym $mod+Shift+3   move container to workspace $ws3;  workspace $ws3
# %%hotkey: Move focused container and go to workspace 4 %%
bindsym $mod+Shift+4   move container to workspace $ws4;  workspace $ws4
# %%hotkey: Move focused container and go to workspace 5 %%
bindsym $mod+Shift+5   move container to workspace $ws5;  workspace $ws5
# %%hotkey: Move focused container and go to workspace 6 %%
bindsym $mod+Shift+6   move container to workspace $ws6;  workspace $ws6
# %%hotkey: Move focused container and go to workspace 7 %%
bindsym $mod+Shift+7   move container to workspace $ws7;  workspace $ws7
# %%hotkey: Move focused container and go to workspace 8 %%
bindsym $mod+Shift+8   move container to workspace $ws8;  workspace $ws8
# %%hotkey: Move focused container and go to workspace 9 %%
bindsym $mod+Shift+9   move container to workspace $ws9;  workspace $ws9
# %%hotkey: Move focused container and go to workspace 10 %%
bindsym $mod+Shift+0   move container to workspace $ws10; workspace $ws10
# %%hotkey: Move focused container and go to workspace 11 %%
bindsym $mod+Shift+F1  move container to workspace $ws11; workspace $ws11
# %%hotkey: Move focused container and go to workspace 12 %%
bindsym $mod+Shift+F2  move container to workspace $ws12; workspace $ws12
# %%hotkey: Move focused container and go to workspace 13 %%
bindsym $mod+Shift+F3  move container to workspace $ws13; workspace $ws13
# %%hotkey: Move focused container and go to workspace 14 %%
bindsym $mod+Shift+F4  move container to workspace $ws14; workspace $ws14
# %%hotkey: Move focused container and go to workspace 15 %%
bindsym $mod+Shift+F5  move container to workspace $ws15; workspace $ws15
# %%hotkey: Move focused container and go to workspace 16 %%
bindsym $mod+Shift+F6  move container to workspace $ws16; workspace $ws16
# %%hotkey: Move focused container and go to workspace 17 %%
bindsym $mod+Shift+F7  move container to workspace $ws17; workspace $ws17
# %%hotkey: Move focused container and go to workspace 18 %%
bindsym $mod+Shift+F8  move container to workspace $ws18; workspace $ws18
# %%hotkey: Move focused container and go to workspace 19 %%
bindsym $mod+Shift+F9  move container to workspace $ws19; workspace $ws19
# %%hotkey: Move focused container and go to workspace 20 %%
bindsym $mod+Shift+F10 move container to workspace $ws20; workspace $ws20

# %%hotkey: Activate workspaces 11/12/13 on output 1/2/3 %%
bindsym $alt+F1 workspace --no-auto-back-and-forth $ws11, \
                workspace --no-auto-back-and-forth $ws12, \
                workspace --no-auto-back-and-forth $ws13

# %%hotkey: Activate workspaces 14/15/16 on output 1/2/3 %%
bindsym $alt+F2 workspace --no-auto-back-and-forth $ws14, \
                workspace --no-auto-back-and-forth $ws15, \
                workspace --no-auto-back-and-forth $ws16

# %%hotkey: Activate workspaces 17/18/19 on output 1/2/3 %%
bindsym $alt+F3 workspace --no-auto-back-and-forth $ws17, \
                workspace --no-auto-back-and-forth $ws18, \
                workspace --no-auto-back-and-forth $ws19
########################################################################
# i3 Controls

# reload the configuration file
# %%hotkey: Reload the configuration file %%
bindsym $mod+Shift+c exec "$cmd_refresh", reload
# %%hotkey: Restart i3 inplace (preserves your layout/session, can be used to upgrade i3) %%
bindsym $mod+Shift+r restart
# %%hotkey: Exit i3 (logs you out of your X session) %%
bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -B 'Yes, exit i3' 'i3-msg exit'"

# %%hotkey: Prompt for an i3 command %%
bindsym $mod+Escape exec $cmd_i3cmd

# %%hotkey: Float the current window %%
bindsym $mod+Shift+f floating toggle

########################################################################
# Bar settings
# %%hotkey: Toggle primary bar
bindsym $mod+b bar mode toggle

########################################################################
# Default window settings

# Default title
for_window [class=".*"] title_format " %title (%instance, %class)"

# Default to floating fot these windows
for_window [window_role="pop-up"] floating enable
for_window [window_role="bubble"] floating enable
for_window [window_role="task_dialog"] floating enable
for_window [window_role="Preferences"] floating enable
for_window [window_type="dialog"] floating enable
for_window [window_type="menu"] floating enable

for_window [instance="floating-border"] floating enable, border pixel 4
for_window [class="Blueman-manager"] floating enable
for_window [class="Eog"] floating enable
for_window [class="flameshot"] floating enable
for_window [class="Gnome-calendar"] floating enable
for_window [class="Ghidra"] floating enable
for_window [class="Pavucontrol"] floating enable, resize set 800 600, move window position center
for_window [class="Pcmanfm"] floating enable, resize set 800 600, move window position center

bindsym Pause [title="Picture-in-Picture"] mark --toggle FLOATING_ACTIVE
bindsym $mod+Pause mark --toggle FLOATING_ACTIVE
for_window [window_role="PictureInPicture"] floating enable, sticky enable, resize set 512 288, mark --toggle FLOATING_ACTIVE

# Burp configs
for_window [class="^burp-StartBurp$" title="^(?!Burp Suite|Intruder).*"] floating enable

for_window [floating] border $border_floating
for_window [tiling] border $border_no_floating


########################################################################
# Mark and goto
# %%hotkey: Mark active window with a mark %%
bindsym $mod+t exec i3-input -F 'mark %s' -l 1 -P 'Mark: '
# %%hotkey: Gogo the marked window  %%
bindsym $mod+g exec i3-input -F '[con_mark="%s"] focus' -l 1 -P 'Goto: '
# %%hotkey: Search window by title %%
bindsym $mod+Shift+g exec i3-input -F '[title="(?i)%s"] focus' -P 'Goto title: '
########################################################################
# Keepassx waiting in Scratchpad
for_window [class="KeePassXC" window_type="^((?!dialog).*)$"] floating enable, move scratchpad, border normal
for_window [class="KeePassXC" window_type="dialog"] floating disable, floating enable, focus
# %%hotkey: Show keepassxc window %%
bindsym $mod+k exec "keepassxc", [class="KeePassXC"] scratchpad show

########################################################################
# 'Dropdown' terminal waiting in Scratchpad
# bindsym twosuperior      [instance="dropdown"]           scratchpad show, \
#                                                         fullscreen enable, move position center
# %%hotkey: Show scratchpad windows %%
bindsym $alt+twosuperior scratchpad show
# %%hotkey: Move current window to scratchpad %%
bindsym $mod+twosuperior move scratchpad
# bindsym $mod+shift+twosuperior                           move scratchpad
#
# for_window [instance="dropdown"] floating enable, fullscreen enable, move scratchpad
assign [instance="ws1"] $ws1
# %%hotkey: Activate $ws1 on current output %%
bindsym twosuperior [workspace=$ws1] move workspace to output current, workspace $ws1
bindsym Shift+twosuperior exec $switch

########################################################################
# Workspace: Firefox
assign [class="Firefox"] $ws_web

########################################################################
# Fake Update : Haha
# %%hotkey: Show fake windows10 update screen %%
bindsym $mod+Shift+l exec chromium --new-window --start-fulscreen --app="http://fakeupdate.net/win10u/"
for_window [instance="fakeupdate.net__win10u"] fullscreen enable, sticky enable

########################################################################
# Workspace: Mails
assign     [class="Evolution"] $ws_mail
for_window [class="Evolution" window_role="^(EMailBrowser|EMsgComposer|ECompEditorEvent).*"] floating enable, border normal, \
           resize set 800 600, move position center

########################################################################
# Workspace: VMs
# %%hotkey: Start virt-viewer %%
bindsym $mod+m exec "~/.bin/rofi-libvirt", focus
assign [class="Virt-viewer"] $ws_vm
for_window [class="Virt-viewer" window_type="dialog"] floating enable, focus
assign [class="Virt-manager"] $ws_vm

########################################################################
# Workspace: Code
assign     [class="Code"] $ws_code

########################################################################
# Workspace: Office
assign [instance="libreoffice"]    $ws_office
assign [class="(?i)soffice"]       $ws_office
assign [class="(?i)libreoffice-"]  $ws_office
assign [class="(?i)libreoffice.*"] $ws_office
assign [class="DesktopEditors"]    $ws_office

########################################################################
# Volume

# %%hotkey: Start flameshot gui %%
bindsym $mod+End exec "flameshot gui"
# %%hotkey: Start flameshot launcher %%
bindsym Print exec "flameshot launcher"
bindsym $mod+p exec "rofi-autorandr"
bindsym $mod+Shift+p exec "~/.config/i3/scripts/pulsemenu"
bindsym XF86MonBrightnessUp exec "python ~/.config/i3/scripts/set-brightness +5"
bindsym XF86MonBrightnessDown exec "python ~/.config/i3/scripts/set-brightness -5"
bindsym XF86AudioRaiseVolume exec "amixer -q -D pulse set Master 5%+ unmute; killall -USR1 i3status py3status"
bindsym XF86AudioLowerVolume exec "amixer -q -D pulse set Master 5%- unmute; killall -USR1 i3status py3status"
bindsym XF86AudioMute exec        "amixer -q -D pulse set Master toggle; killall -SIGUSR1 i3status py3status"
bindsym XF86AudioPrev exec        "playerctl previous"
bindsym XF86AudioNext exec        "playerctl next"
bindsym XF86AudioPlay exec        "playerctl play-pause"

########################################################################
# Notification toggle
# %%hotkey: Toggle notifications (dunst) %%
bindsym $mod+n exec --no-startup-id notify-send $osd_id DUNST_COMMAND_TOGGLE; \
               exec --no-startup-id notify-send $osd_id -t 5000 "Notification enabled !"

########################################################################
# resize window (you can also use the mouse for that)
mode "resize" {
        # These bindings trigger as soon as you enter the resize mode

        # Pressing left will shrink the window’s width.
        # Pressing right will grow the window’s width.
        # Pressing up will shrink the window’s height.
        # Pressing down will grow the window’s height.
        bindsym Left  resize shrink width 5 px or 1 ppt
        bindsym Down  resize grow height 5 px or 1 ppt
        bindsym Up    resize shrink height 5 px or 1 ppt
        bindsym Right resize grow width 5 px or 1 ppt

        bindsym $mod+Left  move left 15px
        bindsym $mod+Down  move down 15px
        bindsym $mod+Up    move up 15px
        bindsym $mod+Right move right 15px

        bindsym s resize shrink width 50px, \
                  resize shrink height 50px, \
                  move position center

        bindsym g resize grow width 50px, \
                  resize grow height 50px, \
                  move position center

        # back to normal: Enter or Escape or $mod+r
        bindsym Return mode "default"
        bindsym Escape mode "default"
        bindsym $mod+r mode "default"
}

# %%hotkey: Switch to resize mode %%
bindsym $mod+r mode "resize"

########################################################################
# Start i3bar to display a workspace bar (plus the system information i3status
# finds out, if available)
#
bar {
    id bar-0
    position top
    strip_workspace_numbers yes
    tray_output primary

    status_command py3status -c ~/.config/i3/py3status/config \
        -i ~/.config/i3/py3status/modules

    separator_symbol "|"

    colors {
      separator #eeeeee
      background $background
      statusline $accent
      focused_workspace $accent $accent #000000 #282828
      active_workspace $background $background $accent #928374
      inactive_workspace $background $background #999999 #928374
      urgent_workspace $urgent $urgent #ffffff #ebdbb2
    }
}


########################################################################
# Start tools
#

exec i3-msg 'workspace --no-auto-back-and-forth $ws_web, append_layout ~/.config/i3/layouts/ws_web.json'
exec i3-msg 'workspace --no-auto-back-and-forth $ws1, append_layout ~/.config/i3/layouts/ws1.json, exec ~/.config/i3/layouts/ws1.run'

exec --no-startup-id exec firefox --name Firefart

# Update dunst config
exec_always --no-startup-id exec ~/.config/i3/scripts/wal-dunst.sh

exec_always --no-startup-id "systemctl --user restart user-session.target"
exec_always --no-startup-id "systemctl --user start user-session-once.target"

# Include specific config files
{% for x in ("~/.config/i3/hosts.d/conf-" + hostname + "*") | fileglob %}
{% include x %}
{% endfor %}
{% for x in ("~/.config/i3/local.d/*") | fileglob %}
{% include x %}
{% endfor %}