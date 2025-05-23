#!/usr/bin/env bash

echo "[\$(date '+%Y-%m-%d %H:%M:%S')] Starting Tdarr Node Updater..."
/tdarr/Tdarr_Updater

echo "[\$(date '+%Y-%m-%d %H:%M:%S')] Waiting for node to finish setup..."
sleep 10

echo "[\$(date '+%Y-%m-%d %H:%M:%S')] Creating config file..."
cat <<EOF > /config/Tdarr_Node_Config.json
{
  "nodeID": "${NODEID}",
  "serverIP": "${SERVERIP}",
  "serverPort": "${SERVERPORT}",
  "nodeIP": "0.0.0.0",
  "nodePort": "8267",
  "ffmpegPath": "",
  "handBrakePath": "",
  "nodeTempPath": "/temp"
}
EOF

echo "[\$(date '+%Y-%m-%d %H:%M:%S')] Launching Tdarr Node with configuration:"
cat /config/Tdarr_Node_Config.json

exec /tdarr/Tdarr_Node
