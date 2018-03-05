#!/bin/sh

python3 firehol_sync.py &

gunicorn --bind=0.0.0.0:8000 --workers=4 --timeout 3600 api:__hug_wsgi__
