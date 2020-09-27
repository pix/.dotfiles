# A sets of config for using i3

## Activate
```bash
systemctl --user daemon-reload
for action in enable \
              start; do
              
    for service in user-i3-alternating-layouts.service user-i3-default-workspace-layout.service; do 

        systemctl --user "${action}" "${service}"

    done
done
```
