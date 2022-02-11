#define GTK_THEME_BACKGROUND #222d32

{% set colors = json("~/.cache/wal/colors.json") -%}
{% set theme = json("~/.config/i3/theme.json") -%}
{% set accent = colors.colors[theme.accent] -%}
{% set urgent = colors.colors[theme.urgent] -%}
{% set accent_num = theme.accent.replace("color", "") -%}
{% set urgent_num = theme.urgent.replace("color", "") -%}

#include "./.cache/wal/colors.h"
#include "./.cache/wal/colors.Xresources"

#define __accent_color {{ accent }}
#define __urgent_color {{ urgent }}
#define __tint 0.4

Xft.dpi: 96

! special
i3wm*accent:        __accent_color
i3wm*urgent:        __urgent_color

! urxvt settings
!
! Override black
URxvt*color0:	    {{ gtk.background }}
URxvt*background:   {{ gtk.background }}
URxvt*cursorColor:  __accent_color

! URxvt*fontAlt: xft:Ubuntu Mono:pixelsize=13:antialias=false:hinting=true
URxvt*fontAlt: xft:DejaVu Sans Mono-7:antialias=true:hinting=true
URxvt*font: xft:DejaVu Sans Mono-7:antialias=true:hinting=true
URxvt.bell-command: notify-send -u low -t 200 "URXVT !"

URxvt*cursorBlink                      : true
#URxvt*inheritPixmap                    : true
URxvt*iso14755                         : false
URxvt*iso14755_52                      : false
URxvt*keysym.Control-Shift-Down        : perl:tabbed:new_tab
URxvt*keysym.Control-Shift-Left        : perl:tabbed:prev_tab
URxvt*keysym.Control-Shift-Right       : perl:tabbed:next_tab
URxvt*keysym.Control-t                 : perl:tabbed:new_tab
URxvt*keysym.M-C-v                     : perl:clipboard:paste_escaped
URxvt*keysym.M-c                       : perl:clipboard:copy
URxvt*keysym.M-v                       : perl:clipboard:paste
URxvt*keysym.Shift-Down                : perl:font-size:decrease
URxvt*keysym.Shift-Up                  :   perl:font-size:increase
URxvt*perl-ext-common                  : default,matcher,tabbed,clipboard,font-size,bell-command
URxvt*print-pipe                       : cat > $(TMPDIR=$HOME mktemp URxvt.XXXXX)
URxvt*reverseVideo                     : false
URxvt*saveLines                        : 10000
URxvt*scrollBar                        : false
URxvt*shading                          : 70
URxvt*tabbed.active-fg                 : 1
URxvt*tabbed.actived-fg                : 4
URxvt*tabbed.actives-fg                : 5
URxvt*tabbed.autohide                  : true
URxvt*tabbed.no-tabbedex-keys          : true
URxvt*tabbed.tab-bg                    : {{ accent_num }}
URxvt*tabbed.tab-fg                    : 0
URxvt*tabbed.tabbar-bg                 : 0
URxvt*tabbed.tabbar-fg                 : {{ accent_num }}
URxvt*tabbed.title-fg                  : {{ accent_num }}
#URxvt*tintColor                        : grey40
#URxvt*transparent:                     : true
URxvt*background.expr                  : rootalign keep { tint [__tint,  __tint,  __tint,  1], root }


*keysym.M-Down                         : \033[1;3B
*keysym.M-Up                           : \033[1;3A
*keysym.M-Left                         : \033[1;3D
*keysym.M-Right                        : \033[1;3C

! Vim
Vim*useSchemes                         : all
Vim*sgiMode                            : true
Vim*foreground                         : lightyellow2
Vim*background                         : Black
Vim*useEnhancedFSB                     : true
Vim*geometry                           : 88x40

Xautolock*locker                       : ~/.bin/i3lock-overlay
Xautolock*time                         : 10

*sessionMgt                            : false
