#!/bin/bash

# ...

set -e
if [ "$APP_ENVIRONMENT" = 'DEV' ]; then
  echo "RUNNING Development Server"
  exec flask run -h 0.0.0.0
else
  echo "RUNNING Production Server"
  exec gunicorn -b :5000 --access-logfile - --error-logfile - app:app
fi
