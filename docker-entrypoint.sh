#!/bin/bash

# Copying viewer to data folder 
cp /root/src/openstreets-nl/index.html /data/

export MAPNIK_MAP_FILE=~/src/openstreets-nl/openstreets-nl.xml
export MAPNIK_TILE_DIR=/data/tiles
mkdir -p ${MAPNIK_TILE_DIR}
chmod -R 777 ${MAPNIK_TILE_DIR}

python /root/src/openstreets-nl/generate_tiles.py


