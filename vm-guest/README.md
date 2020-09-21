# Automatic resolution "Daemon" for KVM guests

## Activate
```bash
systemctl --user daemon-reload
for action in enable \
              start; do
              
    for service in user-spice-autorandr; do

        systemctl --user "${action}" "${service}"

    done
done
```
