#!/bin/sh
#

# Simple script to add some fancy stuff to gdm

# if not present in xdg-gdm, uses the default config
export XDG_CONFIG_DIRS="/usr/share/xfcexenta/xdg-gdm:/etc/xdg/xdg-xfcexenta"

# Xfconf
if [ -x /usr/lib/xfconfd ]; then
    /usr/lib/xfconfd &
fi

# Window manager
if [ -x /usr/bin/xfwm4 ]; then
    /usr/bin/xfwm4 &
fi

# and finally, power manager
if [ -x /usr/bin/xfce4-power-manager ]; then
    /usr/bin/xfce4-power-manager &
fi
