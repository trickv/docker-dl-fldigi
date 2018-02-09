docker run \
    -v $HOME/.dl_fldigi:/root/.dl_fldigi \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v /run/user/$(id -u)/pulse:/run/pulse:ro \
    -v $HOME/.config/pulse/cookie:/root/.config/pulse/cookie:ro \
    -e DISPLAY=$DISPLAY \
    -ti \
    --rm \
    dl-fldigi --hab
