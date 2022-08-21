#!/bin/sh

DOCKER_IMAGE="laszlo-kiraly/toree-spark-scala-playground"

docker run --rm -it --name qgis \
    -v $PWD:/mnt/project \
    -p 8888:8888 \
    $DOCKER_IMAGE jupyter-notebook --ip 0.0.0.0 --no-browser --allow-root /mnt/project/

# enable x11 forwarding for docker
# xhost +
# docker run --rm -it --name qgis \
#     -v $PWD:/mnt/project \
#     -v /tmp/.X11-unix:/tmp/.X11-unix \
#     -e DISPLAY=unix$DISPLAY \
#     -p 8888:8888 \
#     $DOCKER_IMAGE jupyter-notebook --ip 0.0.0.0 --no-browser --allow-root /mnt/project/