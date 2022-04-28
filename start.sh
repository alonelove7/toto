#!/bin/sh
gunicorn main:main --workers 4 --threads 4 --bind 0.0.0.0:443 --timeout 86400 --worker-class aiohttp.GunicornWebWorker & python3 -m bot
