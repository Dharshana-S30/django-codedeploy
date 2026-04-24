#!/bin/bash

# Update system
sudo apt update -y

# Install Python, pip, venv, nginx
sudo apt install -y python3 python3-pip python3-venv nginx

# Go to project directory
cd /home/ubuntu/django-ecommerce

# Create virtual environment
python3 -m venv venv

# Activate venv and install dependencies
source venv/bin/activate
pip install -r requirements.txt
pip install gunicorn
