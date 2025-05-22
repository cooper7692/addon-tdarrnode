#!/bin/bash

./Tdarr_Updater

sleep 10

export TDARR_SERVER_IP=${TDARR_SERVER_IP}
export TDARR_SERVER_PORT=${TDARR_SERVER_PORT}
export TDARR_NODE_NAME=${TDARR_NODE_NAME}

./Tdarr_Node/Tdarr_Node
