#!/usr/bin/env ash

cd /app

pip install -r requirements.txt

/usr/bin/gunicorn $PARAMS
