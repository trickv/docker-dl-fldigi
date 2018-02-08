docker run \
    -v $HOME/.dl_fldigi:/root/.dl_fldigi \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=$DISPLAY \
    -ti \
    dl-fldigi --hab
