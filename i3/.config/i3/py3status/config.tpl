###############################################################################
# ceerious i3 status config
# see "man i3status" for documentation.
#
# It is important that this file is edited as UTF-8.
# The following line should contain a sharp s:
# ß
# If the above line is not correctly displayed, fix your editor first!
###############################################################################

{% set is_roger = hostname == 'roger-compta' %}

py3status {
   resources = [
       ('color_accent', 'i3wm*accent', 'black'),
       ('color_color0', '*color0', 'black'),
       ('color_color1', '*color1', 'black'),
       ('color_color2', '*color2', 'black'),
       ('color_color3', '*color3', 'black'),
       ('color_color4', '*color4', 'black'),
       ('color_color5', '*color5', 'black'),
       ('color_color6', '*color6', 'black'),
       ('color_color7', '*color7', 'black'),
       ('color_color8', '*color8', 'black'),
       ('color_color9', '*color9', 'black'),
       ('color_color10', '*color10', 'black'),
       ('color_color11', '*color11', 'black'),
       ('color_color12', '*color12', 'black'),
       ('color_color13', '*color13', 'black'),
       ('color_color14', '*color14', 'black'),
       ('color_color15', '*color15', 'black'),
   ]
}

general {
    interval        = 1
    colors          = false
    color           = '#aaaaaa'
    color_good      = '#aaaaaa'
    color_degraded  = '#aaaaaa'
    color_bad       = '#aaaaaa'
    output_format   = "i3bar"
}

order += "group rate"
order += "frame xsel"
order += "dpms"
order += "frame mpris"
order += "volume_status output"
order += "volume_status input"
order += "group vms"
order += "frame rootfs"
order += "static_string bluetooth"
order += "frame network"
order += "frame cpu"
order += "frame date"
order += "frame time"
order += "battery_level"

{% if is_roger %}
frame systemd {
    format = '{button}{output}'
    format_separator = " "
    format_button_closed = ""
    format_button_open   = " "
    click_mode = "button"
    align="right"

    systemd barrier {
        unit = 'user-barrier@bousier.local.service'
	format = '[\?if=status=not-found |[\?if=!hide barrier: [\?if=status=inactive |]]]'
        user = True
        hide_extension = True
        on_click 1 = 'exec systemctl --user restart user-barrier@bousier.local'
        on_click 3 = 'exec systemctl --user stop user-barrier@bousier.local'
    }
}
{% endif %}


frame mpris {
   format = '{button}{output}'
    format_separator = " "
    format_button_closed = ""
    format_button_open   = "  "
    click_mode = "button"
    align="right"

    mpris {
      format="[{artist} - ]{title}"
      button_next = 3
      button_previous = 2
      format_none=''
      icon_next=''
      icon_previous=''
      icon_pause=''
      icon_play=''
      player_priority = "[mopidy, mpd, cantata, vlc, bomi, *]"
      on_click 1 = "exec playerctl play-pause"
      on_click 3 = "exec playerctl stop"
    }

    static_string {
        format = ''
        on_click 1 = "exec playerctl previous"
    }

    static_string {
        format = ""
        on_click 1 = "exec playerctl next"
    }
}

group vms {
    format = '{button}{output}'
    format_button_closed = ""
    format_button_open   = "  "

    color_good      = '#aaaaaa'
    color_degraded  = '#aaaaaa'
    color_bad       = '#aaaaaa'

    click_mode = "button"
    button_toggle = 3
    button_next = 1

    frame {
        {% for machine in libvirt -%}
        libvirt_status {
            uri = "qemu:///system"
            name = "{{ machine.name }}"
            format = " {{ machine.nick }}: {state}"
            format_running = " {{ machine.nick }}"
            format_paused = " {{ machine.nick }}"
            {% if machine.default -%}
            format_shut_off = " {{ machine.nick }}"
            {%- else %}
            format_shut_off = ""            
            {%- endif %}
            format_no_state = ""

            on_click 1 = 'exec "virt-viewer -c qemu:///system -a {{ machine.name }}"'
            on_click 2 = 'exec "virsh -c qemu:///system managedsave {{ machine.name }}"'
            on_click 3 = 'exec "virsh -c qemu:///system start {{ machine.name }}"'
        }

        {% endfor %}

    }
    frame {
        {% for machine in libvirt -%}
        libvirt_status {
            uri = "qemu:///system"
            name = "{{ machine.name }}"
            format = " {{ machine.nick }}: {state}"
            format_running = " {{ machine.nick }}"
            format_paused = " {{ machine.nick }}"
            format_shut_off = " {{ machine.nick }}"
            format_no_state = ""

            on_click 1 = 'exec "virt-viewer -c qemu:///system -a {{ machine.name }}"'
            on_click 2 = 'exec "virsh -c qemu:///system managedsave {{ machine.name }}"'
            on_click 3 = 'exec "virsh -c qemu:///system start {{ machine.name }}"'
        }

        {% endfor %}
    }
}

frame rootfs {
    format = '{button}{output}'
    format_button_closed = ""
    format_button_open   = ""
    disk "/" {
            format = " root:%avail"
            prefix_type = custom
            low_threshold = 20
            threshold_type = percentage_avail
            on_click 3 = 'exec "pcmanfm"'
    }
    open = False
}

static_string bluetooth {
    format = ''
    on_click 1 = "exec blueman-manager"
    on_click 3 = "exec blueman-manager"
}

frame network {

    format_button_closed = ""
    format_button_open   = ""
    format = '{button}{output}'

    networkmanager {
	format = " {format_device}"
        devices = ["e*", "w*"]        # ethernet, wireless, lo, etc
    }

    open = True
}

battery_level {
    format = " {percent}% {icon} {time_remaining}"
    battery_id = "all"
    notify_low_level = True
    notification = True
    blocks = "{{ fa.battery_empty }}{{ fa.battery_quarter }}{{ fa.battery_half }}{{ fa.battery_three_quarters }}{{ fa.battery_full }}"
    threshold_degraded = 15
    threshold_bad = 5
}

frame date {
    format = '{button}{output}'
    format_button_closed = ""
    format_button_open   = ""

    tztime date {
        format = " %V - %A %e %B"
        on_click 3 = "exec --no-startup-id gnome-calendar"
        on_click 2 = "restart"
    }

}

frame time {
    format = '{button}{output}'
    format_button_closed = ""
    format_button_open   = ""

    tztime time {
        format = " %H:%M:%S"
    }
}


frame cpu {
    format = '{button}{output}'
    format_button_closed = ""
    format_button_open = ""

    cpu_temperature 1 {
        format = " %degrees°C"
    }

    sysdata {
        format = " {mem_used} GiB"
    }

    cpu_usage {
        format = "  %usage"
    }

    frame {
        format = '{button}{output}'
        format_button_closed = ""
        format_button_open = ""
        load {
            format = " %1min %5min %15min"
        }
    }
    open = False
}

frame xsel {
    format = 'aa{{ fa['clipboard-check'] }}aa'
    on_click 1 = "exec ~/.bin/exchange-clipboard"
    on_click 2 = 'exec "xsel -o -p; xsel -i -b"'
    on_click 3 = 'exec "xsel -o -b; xsel -i -p"'
}

dpms {
    format = "{icon} DPMS"
    icon_on = ""
    icon_off = ""
}

group rate {
    format = '{output}{button}'
    format_button_closed = ""
    format_button_open = ""
    click_mode = "all"
    button_toggle = 3
    button_next = 1

    net_rate nr1 {
        format = "{down}  {up} "
        # format = "{total}"
        precision = 0
        format_no_connection = " - "
        cache_timeout = 5
    }

    net_rate nr2 {
        format = "{total} "
        # format = "{total}"
        precision = 0
        format_no_connection = " - "
        cache_timeout = 5
    }

}


volume_status output {
    format = "{percentage}% "
    format_muted = ""
    is_input = False

    button_mute = 1
    on_click 3 = 'exec "killall pavucontrol; pavucontrol --tab=1"'
    on_click 2 = 'exec "killall pavucontrol"'
}

volume_status input {
    format = "{percentage}% "
    format_muted = ""
    is_input = True

    button_mute = 1
    on_click 3 = 'exec "killall pavucontrol; pavucontrol --tab=2"'
    on_click 2 = 'exec "killall pavucontrol"'
}
