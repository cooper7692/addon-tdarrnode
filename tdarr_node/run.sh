#!/usr/bin/env bash

echo "[INFO] Starting Tdarr Node Updater..."
/tdarr/Tdarr_Updater

echo "[INFO] Waiting for node to finish setup..."
sleep 60

echo "[INFO] Launching Tdarr Node..."
exec ./Tdarr_Node
