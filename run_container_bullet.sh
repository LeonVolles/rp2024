#!/bin/bash
##############################################################################
##                            Run the container                             ##
##############################################################################

# Datei aufrufen
# ./build_image_bullet.sh 
# ./run_container_bullet.sh
# python scripts_bullet/generate_tn_data.py 

SRC_CONTAINER=/home/jovyan/workspace/src
SRC_HOST="$(pwd)"/src
DATA_CONTAINER=/home/jovyan/data
DATA_HOST="$(pwd)"/data

docker run \
  --name rp2024-bullet \
  --privileged \
  --rm \
  -it \
  --net=host \
  -v "$SRC_HOST":"$SRC_CONTAINER":rw \
  -v "$DATA_HOST":"$DATA_CONTAINER":rw \
  -e DISPLAY="$DISPLAY" \
 rp2024/bullet


 # --gpus all \