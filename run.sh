#!/bin/sh

# We need to add a empty Data.fs if it does not exist
# as zeo will not start without on.
if [ ! -f /var/zeo/fs/Data.fs ]; then
    touch /var/zeo/fs/Data.fs
fi

exec /usr/local/bin/runzeo -a 8100 -C /etc/zeo.conf
