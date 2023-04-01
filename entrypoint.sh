#!/bin/sh
which gunicorn
cd /app
ls -lasF /app
ls -lasF /app/config
ls -lasF /app/static
gunicorn app:app -w 4 --threads 2 -b 0.0.0.0:80