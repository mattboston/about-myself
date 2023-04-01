#!/bin/sh
which gunicorn
cp /app/data/config/* /app/config/
cp /app/data/images/* /app/static/
cd /app
ls -lasF /app
ls -lasF /app/config
ls -lasF /app/static
gunicorn app:app -w 4 --threads 2 -b 0.0.0.0:80