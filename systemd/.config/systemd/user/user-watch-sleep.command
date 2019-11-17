#!/bin/bash

dbus-monitor --system "type='signal',interface='org.freedesktop.login1.Manager',member=PrepareForSleep" | while read x; do
    case "$x" in
        *"boolean false"*) 
          systemctl --user --no-block stop user-sleep.target
          ;;
        *"boolean true"*) 
          systemctl --user --no-block start user-sleep.target
          ;;
    esac
done
