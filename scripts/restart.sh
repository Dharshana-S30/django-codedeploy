#!/bin/bash

# Stop gunicorn if running, ignore error if not running
pkill gunicorn || true

# Stop nginx if running, ignore error if not running  
sudo systemctl stop nginx || true

exit 0
