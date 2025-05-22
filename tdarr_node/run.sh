#!/bin/bash

docker run -d \
  --name=tdarr_node \
  --network=host \
  -e PUID=0 \
  -e PGID=0 \
  -e UMASK_SET=022 \
  -e TZ=Etc/UTC \
  -e nodeID="$TDARR_NODE_NAME" \
  -e serverIP="$TDARR_SERVER_IP" \
  -e serverPort="$TDARR_SERVER_PORT" \
  -v /mnt/media:/media \
  -v /mnt/tdarr_cache:/temp \
  ghcr.io/haveagitgat/tdarr_node