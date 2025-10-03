#!/bin/sh

pkg add -f https://github.com/MediaBrowser/Emby.Releases/releases/download/4.9.1.36/emby-server-freebsd13_4.9.1.36_amd64.pkg
# Enable the service
sysrc -f /etc/rc.conf emby_server_enable="YES"

# Start the service
service emby-server start 2>/dev/null
