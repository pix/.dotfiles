# Fancy locker screen with XKCD comic

## Install dependencies
```bash
apt install xss-lock ffmpeg jq wget
```

## Activate
```bash
for action in enable \
              start; do
              
    for service in user-timers.target \
                   user-download-xkcd.timer \
                   user-xss-fancylock; do

        systemctl --user "${action}" "${service}"

    done
done
```
