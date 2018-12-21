#!/bin/bash -x

# Add local user
# Either use the USER_ID USER_NAME if passed in at runtime or
# fallback


if [ -z "$USER_ID" ];then
    echo "USER_ID not provided, begin with root"
    $@
    exit
fi

echo "Starting with UID : $USER_ID "
#useradd --shell /bin/bash -u $USER_ID -o -c "" -m user

# http will be started as user containeruser
usermod -u $USER_ID containeruser

# test tmux share

cmdline="/go/bin/gotty -p 8000 --permit-write --reconnect $@"

echo "all params $cmdline"
su containeruser -- -c "$cmdline"

