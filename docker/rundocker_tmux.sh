#!/bin/bash -x
tmuxsocket=`echo $TMUX | cut -f1 -d','`
if [ -z "$tmuxsocket" ];then
    echo "tmux socket is not found on host"
    exit
fi
# tmux.conf should be shared at home
echo "user tmuxsocket: $tmuxsocket"
echo "run tmux -2 -S $tmuxsocket $@"
docker run --name "mygotty_tmux" -d -t -e USER_ID=`id -u $USER` \
    -v $tmuxsocket:$tmuxsocket \
    -v /home:/home -p 9888:8000 mygotty tmux -2 -S $tmuxsocket $@

