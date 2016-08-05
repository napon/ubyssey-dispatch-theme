#!/bin/bash

# Stop the server
if [ -f run/ubyssey.pid ]; then
  sudo kill `cat run/ubyssey.pid`
fi

# Start the server
sudo chmod g+x ${BASH_SOURCE%/*}/gunicorn_start
sudo -u ubyssey -H sh -c "_scripts/gunicorn_start"