#!/bin/bash

# Start the server
sudo chmod g+x ${BASH_SOURCE%/*}/gunicorn_start
sudo -u ubyssey -H sh -c "${BASH_SOURCE%/*}/gunicorn_start"