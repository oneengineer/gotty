use build.sh to create docker image, by default it is called mygotty.

rundocker.sh allow you to create a gotty instance for any program

rundocker_tmux.sh will let you open gotty instance for the current tmux session.

for example
```
    # you have to be under a tmux session
    echo $TMUX
    /tmp/tmux-1000/default,18752,0
    # the following command is similar to tmux a
    ./rundocker_tmux.sh a
```
