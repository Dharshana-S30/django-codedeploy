#!/bin/bash

cd /home/ubuntu/django-ecommerce

# Activate virtual environment
source venv/bin/activate

# Run migrations
python3 manage.py migrate

# Collect static files
python3 manage.py collectstatic --noinput

# Start Gunicorn
gunicorn --workers 3 --bind 0.0.0.0:8000 ecommerce.wsgi:application --daemon
