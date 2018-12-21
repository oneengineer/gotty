#!/bin/bash

docker run -it -e USER_ID=`id -u $USER` \
    -v /home:/home -p 9888:8000 mygotty $@

