# A sets of config for using i3

## Activate
```bash

stow systemd
stow fancy-lock-xkcd
stow i3
stow urxvt

systemctl --user daemon-reload
for action in enable \
              start; do
              
    for service in \
        user-blueman-applet.service \
        user-compton.service \
        user-download-xkcd.timer \
        user-flameshot.service \
        user-i3-alternating-layouts.service \
        user-i3-background.service \
        user-i3-default-workspace-layout.service \
        user-i3-icons.service \
        user-i3-smart-picture-in-picture.service \
        user-i3-workspace-back-forth.service \
        user-mpris-notify.service \
        user-nm-applet.service \
        user-pasystray.service \
        user-redshift-gtk.service \
        user-timers.target \
        user-xautolock.service \
        user-xss-fancylock.service; \
        do 

        systemctl --user "${action}" "${service}"

    done
done
```
