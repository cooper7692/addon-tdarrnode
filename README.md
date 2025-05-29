# Tdarr Node Home Assistant Add-on

This add-on runs the Tdarr Node as PID 1 using s6-overlay v3, with support for the official Tdarr_Updater at build time.

## Features
- Auto-downloads the latest Tdarr_Node
- Starts node cleanly using s6 overlay
- Mounts config to `/config/tdarr_node/`
- Cleans up updater artifacts
